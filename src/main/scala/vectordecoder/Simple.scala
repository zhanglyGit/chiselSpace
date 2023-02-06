package vectordecoder

import chisel3._
import chisel3.util.BitPat.bitPatToUInt
import chisel3.util._

class Simple extends Module {
  val io = IO(new Bundle {
    val instr = Input(UInt(32.W))
    val vecCtrl = Output(new CtrlSignals)
  })

  val vecCtrl = Wire(new CtrlSignals)

  vecCtrl.srcType(0) := 0.U
  vecCtrl.srcType(1) := 0.U
  vecCtrl.srcType(2) := 0.U
  vecCtrl.srcType(3) := 0.U
  vecCtrl.lsrc(0) := 0.U
  vecCtrl.lsrc(1) := 0.U
  vecCtrl.lsrc(2) := 0.U
  vecCtrl.lsrc(3) := 0.U
  vecCtrl.ldest := 0.U
  vecCtrl.fuType := 0.U
  vecCtrl.fuOpType := 0.U
  vecCtrl.rfWen := false.B
  vecCtrl.fpWen := false.B
  vecCtrl.vecWen := false.B
  vecCtrl.mWen := false.B
  vecCtrl.vxsatWen := false.B
  vecCtrl.isXSTrap := false.B
  vecCtrl.noSpecExec := false.B
  vecCtrl.blockBackward := false.B
  vecCtrl.flushPipe := false.B
  vecCtrl.selImm := 0.U
  vecCtrl.imm := 0.U
  vecCtrl.commitType := 0.U
  vecCtrl.isMove := false.B
  vecCtrl.singleStep := false.B
  vecCtrl.replayInst := false.B

  switch(io.instr(6, 0)) {
    is("b1010111".U) {
      switch(io.instr(14, 12)) {
        is("b000".U) {
          switch(io.instr(31, 26)) {
            is("b000000".U) {

              vecCtrl.srcType(0) := SrcType.vp
              vecCtrl.srcType(1) := SrcType.vp
              vecCtrl.srcType(2) := 0.U
              vecCtrl.srcType(3) := 0.U
              vecCtrl.lsrc(0) := io.instr(19, 15)
              vecCtrl.lsrc(1) := io.instr(24, 20)
              vecCtrl.lsrc(2) := 0.U
              vecCtrl.lsrc(3) := 0.U
              vecCtrl.ldest := io.instr(11, 7)
              vecCtrl.fuType := FuType.vipu
              vecCtrl.fuOpType := "b1111".U(7.W)
              vecCtrl.rfWen := false.B
              vecCtrl.fpWen := false.B
              vecCtrl.vecWen := true.B
              vecCtrl.mWen := false.B
              vecCtrl.vxsatWen := false.B
              vecCtrl.isXSTrap := false.B
              vecCtrl.noSpecExec := false.B
              vecCtrl.blockBackward := false.B
              vecCtrl.flushPipe := false.B
              vecCtrl.selImm := "b0000".U                          //TODO
              vecCtrl.imm := LookupTree(vecCtrl.selImm, ImmUnion.immSelMap.map(
                x => {
                  val minBits = x._2.minBitsFromInstr(io.instr)
                  require(minBits.getWidth == x._2.len)
                  x._1 -> minBits
                }
              ))
              vecCtrl.commitType := 0.U
              vecCtrl.isMove := false.B
              vecCtrl.singleStep := false.B
              vecCtrl.replayInst := false.B

            }

          }

        }
      }

    }
  }

  val ctrlReg = RegNext(vecCtrl)

  io.vecCtrl := ctrlReg

}

