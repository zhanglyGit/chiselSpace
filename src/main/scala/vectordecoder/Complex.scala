package  vectordecoder

import chisel3._
import chisel3.util.BitPat.bitPatToUInt
import chisel3.util._

class Complex extends Module {
  val io = IO(new Bundle {
    val instr = Input(UInt(32.W))
    val vlmul = Input(UInt(3.W)) //101-1/8 110-1/4 111-1/2 000-1 001-2 010-4 011-8
    val isComplex = Input(Vec(6, Bool()))
    val vecCtrl = Output(Vec(6, new CtrlSignals))
    val num = Output(UInt(3.W))
    val offset = Output(Vec(6,Bool()))
    val strIndex = Output(UInt(3.W))
  })

  val numOfUop = Wire(UInt(4.W))
  val vecCtrlBundle = Wire(Vec(8, new CtrlSignals))

  when(io.vlmul === "b001".U) {
    numOfUop := 2.U
  }.elsewhen(io.vlmul === "b010".U) {
    numOfUop := 4.U
  }.elsewhen(io.vlmul === "b011".U) {
    numOfUop := 8.U
  } otherwise {
    numOfUop := 1.U
  }

  for (i <- 0 until 8) {
    vecCtrlBundle(i).srcType(0) := 0.U
    vecCtrlBundle(i).srcType(1) := 0.U
    vecCtrlBundle(i).srcType(2) := 0.U
    vecCtrlBundle(i).srcType(3) := 0.U
    vecCtrlBundle(i).lsrc(0) := 0.U
    vecCtrlBundle(i).lsrc(1) := 0.U
    vecCtrlBundle(i).lsrc(2) := 0.U
    vecCtrlBundle(i).lsrc(3) := 0.U
    vecCtrlBundle(i).ldest := 0.U
    vecCtrlBundle(i).fuType := 0.U
    vecCtrlBundle(i).fuOpType := 0.U
    vecCtrlBundle(i).rfWen := false.B
    vecCtrlBundle(i).fpWen := false.B
    vecCtrlBundle(i).vecWen := false.B
    vecCtrlBundle(i).mWen := false.B
    vecCtrlBundle(i).vxsatWen := false.B
    vecCtrlBundle(i).isXSTrap := false.B
    vecCtrlBundle(i).noSpecExec := false.B
    vecCtrlBundle(i).blockBackward := false.B
    vecCtrlBundle(i).flushPipe := false.B
    vecCtrlBundle(i).selImm := 0.U
    vecCtrlBundle(i).imm := 0.U
    vecCtrlBundle(i).commitType := 0.U

    vecCtrlBundle(i).isMove := false.B
    vecCtrlBundle(i).singleStep := false.B
    vecCtrlBundle(i).replayInst := false.B
  }

  switch(io.instr(6, 0)) {
    is("b1010111".U) {
      switch(io.instr(14, 12)) {
        is("b000".U) {
          switch(io.instr(31, 26)) {
            is("b000000".U) {
              for (i <- 0 until 8) {

                vecCtrlBundle(i).srcType(0) := SrcType.vp
                vecCtrlBundle(i).srcType(1) := SrcType.vp
                vecCtrlBundle(i).srcType(2) := 0.U
                vecCtrlBundle(i).srcType(3) := 0.U
                vecCtrlBundle(i).lsrc(0) := io.instr(19, 15) + i.U
                vecCtrlBundle(i).lsrc(1) := io.instr(24, 20) + i.U
                vecCtrlBundle(i).lsrc(2) := 0.U
                vecCtrlBundle(i).lsrc(3) := 0.U
                vecCtrlBundle(i).ldest := io.instr(11, 7) + i.U
                vecCtrlBundle(i).fuType := FuType.vipu
                vecCtrlBundle(i).fuOpType := "b1111".U(7.W)
                vecCtrlBundle(i).rfWen := false.B
                vecCtrlBundle(i).fpWen := false.B
                vecCtrlBundle(i).vecWen := true.B
                vecCtrlBundle(i).mWen := false.B
                vecCtrlBundle(i).vxsatWen := false.B
                vecCtrlBundle(i).isXSTrap := false.B
                vecCtrlBundle(i).noSpecExec := false.B
                vecCtrlBundle(i).blockBackward := false.B
                vecCtrlBundle(i).flushPipe := false.B
                vecCtrlBundle(i).selImm := "b0000".U                                                                  //TODO
                vecCtrlBundle(i).imm := LookupTree(vecCtrlBundle(i).selImm, ImmUnion.immSelMap.map(
                  x => {
                    val minBits = x._2.minBitsFromInstr(io.instr)
                    require(minBits.getWidth == x._2.len)
                    x._1 -> minBits
                  }
                ))
                vecCtrlBundle(i).commitType := 0.U

                vecCtrlBundle(i).isMove := false.B
                vecCtrlBundle(i).singleStep := false.B
                vecCtrlBundle(i).replayInst := false.B
                //indexOfUopBundle(i) := i.U

              }

            }

          }
        }

      }
    }

  }

  val normal :: extension6 :: Nil = Enum(2)
  val vecCtrlReg = Reg(Vec(6, new CtrlSignals))
  val num = Wire(UInt(3.W))
  val offset = Wire(Vec(6,Bool()))

  val stateReg = RegInit(normal)
  switch(stateReg) {
    is(normal) {
      when(numOfUop <= 6.U) {

        stateReg := normal
        for (i <- 0 until 6) {
          vecCtrlReg(i) := vecCtrlBundle(i)

          // indexOfUopReg(i) := indexOfUopBundle(i)
        }

      }.otherwise {

        stateReg := extension6
        for (i <- 0 until 6) {
          vecCtrlReg(i) := vecCtrlBundle(i)

          //indexOfUopReg(i) := indexOfUopBundle(i)
        }

      }
    }
    is(extension6) {
      stateReg := normal
      for (i <- 0 until 2) {
        vecCtrlReg(i) := vecCtrlBundle(i + 6)

        //indexOfUopReg(i) := indexOfUopBundle(i + 6)
      }
    }
  }

  when(stateReg === normal && numOfUop <= 6.U) {
    num := numOfUop
  } .elsewhen(stateReg === normal && numOfUop > 6.U) {
    num := 6.U
  }.elsewhen(stateReg === extension6) {
    num := numOfUop - 6.U
  } .otherwise {
    num := 6.U
  }

  io.num := RegNext(num)

  when(stateReg === normal && numOfUop <= 6.U) {
    offset(0) := false.B
    offset(1) := numOfUop === 6.U || (numOfUop < 6.U && io.isComplex(1))
    offset(2) := (numOfUop === 5.U && !io.isComplex(1)) || (numOfUop < 5.U && io.isComplex(2) && !io.isComplex(1))
    offset(3) := (numOfUop === 4.U && !io.isComplex(1) && !io.isComplex(2)) || (numOfUop < 4.U && io.isComplex(3) && !io.isComplex(2) && !io.isComplex(1))
    offset(4) := (numOfUop === 3.U && !io.isComplex(1) && !io.isComplex(2) && !io.isComplex(3)) || (numOfUop < 3.U && io.isComplex(4) && !io.isComplex(3) && !io.isComplex(2) && !io.isComplex(1))
    offset(5) := (numOfUop === 2.U && !io.isComplex(1) && !io.isComplex(2) && !io.isComplex(3) && !io.isComplex(4)) || (numOfUop < 2.U && io.isComplex(5) && !io.isComplex(4) && !io.isComplex(3) && !io.isComplex(2) && !io.isComplex(1))
  }.elsewhen(stateReg === normal && numOfUop > 6.U) {
    offset(0) := true.B
    for(i <- 1 until 6) {
      offset(i) := false.B
    }
  }.elsewhen(stateReg === extension6) {
    offset(0) := false.B
    offset(1) := io.isComplex(1)
    offset(2) := !io.isComplex(1) && io.isComplex(2)
    offset(3) := !io.isComplex(1) && !io.isComplex(2) && io.isComplex(3)
    offset(4) := !io.isComplex(1) && !io.isComplex(2) && !io.isComplex(3) && io.isComplex(4)
    offset(5) := (numOfUop === 8.U && !io.isComplex(1) && !io.isComplex(2) && !io.isComplex(3) && !io.isComplex(4)) || (numOfUop < 8.U && io.isComplex(5) && !io.isComplex(4) && !io.isComplex(3) && !io.isComplex(2) && !io.isComplex(1))
  } .otherwise {
    offset(0) := true.B
    for (i <- 1 until 6) {
      offset(i) := false.B
    }
  }
  io.offset := RegNext(offset)

  when(offset(0)) {
    io.strIndex := 0.U
  } .elsewhen(offset(1)) {
    io.strIndex := 1.U
  } .elsewhen(offset(2)) {
    io.strIndex := 2.U
  } .elsewhen(offset(3)) {
    io.strIndex := 3.U
  } .elsewhen(offset(4)) {
    io.strIndex := 4.U
  } .elsewhen(offset(5)) {
    io.strIndex := 5.U
  } .otherwise {
    io.strIndex := 6.U
  }

  io.vecCtrl := vecCtrlReg

}