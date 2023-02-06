package vectordecoder

import chisel3._
import chisel3.util.BitPat.bitPatToUInt
import chisel3.util._
import chisel3.stage.ChiselStage

class VectorDiv extends Module {
  val io = IO(new Bundle {
    val instr = Input(Vec(6, UInt(32.W)))
    val vlmul = Input(Vec(6, UInt(3.W))) //101-1/8 110-1/4 111-1/2 000-1 001-2 010-4 011-8
    val outCtrlSignals = Output(Vec(6, new CtrlSignals))
    val valid = Output(Vec(6, Bool()))
    val strIndex = Output(UInt(3.W))
  })

  val decoder0 = Module(new Complex)
  val decoders = Seq.fill(5)(Module(new Simple))

  val isComplex = Wire(Vec(6, Bool()))
  val ctrlComplex = Wire(Vec(6, new CtrlSignals))
  val num = Wire(UInt(3.W))
  val offset = Wire(UInt(6.W))

  val ctrlSimple = Wire(Vec(5, new CtrlSignals))

  decoder0.io.instr := io.instr(0)
  decoder0.io.vlmul := io.vlmul(0)
  decoder0.io.isComplex := isComplex
  ctrlComplex := decoder0.io.vecCtrl
  num := decoder0.io.num
  offset := decoder0.io.offset.asUInt
  io.strIndex := decoder0.io.strIndex
  for (i <- 0 until 5) {
    decoders(i).io.instr := io.instr(i + 1)
    ctrlSimple(i) := decoders(i).io.vecCtrl
  }

  for (i <- 0 until 6) {
    when(io.vlmul(i) === "b001".U || io.vlmul(i) === "b010".U || io.vlmul(i) === "b011".U) {
      isComplex(i) := true.B
    } .otherwise {
      isComplex(i) := false.B
    }
  }

  io.outCtrlSignals := ctrlComplex
  //io.strIndex := 0.U
  for (i <- 0 until 6) {
    io.valid(i) := false.B
  }


  switch(offset) {
    is("b000000".U) {
      io.outCtrlSignals(0) := ctrlComplex(0)

      for (i <- 0 until 5) {
        io.outCtrlSignals(i + 1) := ctrlSimple(i)

      }
      //io.strIndex := 6.U

      for(i <- 0 until 6) {
        io.valid(i) := true.B
      }

    }
    is("b000001".U) {
      io.outCtrlSignals := ctrlComplex

      //io.strIndex := 0.U

      for (i <- 0 until 6) {
        io.valid(i) := true.B
      }
    }
    is("b000010".U) {
      //io.strIndex := 1.U
      switch(num) {
        is(1.U) {
          io.outCtrlSignals(0) := ctrlComplex(0)


          for (i <- 0 until 1) {
            io.valid(i) := true.B
          }
          for (i <- 1 until 6) {
            io.valid(i) := false.B
          }
        }
        is(2.U) {
          for (i <- 0 until 2) {
            io.outCtrlSignals(i) := ctrlComplex(i)

          }

          for (i <- 0 until 2) {
            io.valid(i) := true.B
          }
          for (i <- 2 until 6) {
            io.valid(i) := false.B
          }
        }
        is(3.U) {
          for (i <- 0 until 3) {
            io.outCtrlSignals(i) := ctrlComplex(i)

          }

          for (i <- 0 until 3) {
            io.valid(i) := true.B
          }
          for (i <- 3 until 6) {
            io.valid(i) := false.B
          }
        }
        is(4.U) {
          for (i <- 0 until 4) {
            io.outCtrlSignals(i) := ctrlComplex(i)

          }

          for (i <- 0 until 4) {
            io.valid(i) := true.B
          }
          for (i <- 4 until 6) {
            io.valid(i) := false.B
          }
        }
        is(5.U) {
          for (i <- 0 until 5) {
            io.outCtrlSignals(i) := ctrlComplex(i)

          }

          for (i <- 0 until 5) {
            io.valid(i) := true.B
          }
          for (i <- 5 until 6) {
            io.valid(i) := false.B
          }
        }
        is(6.U) {
          for (i <- 0 until 6) {
            io.outCtrlSignals(i) := ctrlComplex(i)

          }

          for (i <- 0 until 6) {
            io.valid(i) := true.B
          }

        }
      }
    }
    is("b000100".U) {
      //io.strIndex := 2.U
      switch(num) {
        is(1.U) {
          io.outCtrlSignals(0) := ctrlComplex(0)

          io.outCtrlSignals(1) := ctrlSimple(0)


          for (i <- 0 until 2) {
            io.valid(i) := true.B
          }
          for (i <- 2 until 6) {
            io.valid(i) := false.B
          }
        }
        is(2.U) {
          for (i <- 0 until 2) {
            io.outCtrlSignals(i) := ctrlComplex(i)

          }
          io.outCtrlSignals(2) := ctrlSimple(0)


          for (i <- 0 until 3) {
            io.valid(i) := true.B
          }
          for (i <- 3 until 6) {
            io.valid(i) := false.B
          }
        }
        is(3.U) {
          for (i <- 0 until 3) {
            io.outCtrlSignals(i) := ctrlComplex(i)

          }
          io.outCtrlSignals(3) := ctrlSimple(0)

          for (i <- 0 until 4) {
            io.valid(i) := true.B
          }
          for (i <- 4 until 6) {
            io.valid(i) := false.B
          }
        }
        is(4.U) {
          for (i <- 0 until 4) {
            io.outCtrlSignals(i) := ctrlComplex(i)

          }
          io.outCtrlSignals(4) := ctrlSimple(0)


          for (i <- 0 until 5) {
            io.valid(i) := true.B
          }
          for (i <- 5 until 6) {
            io.valid(i) := false.B
          }
        }
        is(5.U) {
          for (i <- 0 until 5) {
            io.outCtrlSignals(i) := ctrlComplex(i)

          }
          io.outCtrlSignals(5) := ctrlSimple(0)

          for (i <- 0 until 6) {
            io.valid(i) := true.B
          }

        }

      }

    }
    is("b001000".U) {
      //io.strIndex := 3.U
      switch(num) {
        is(1.U) {
          io.outCtrlSignals(0) := ctrlComplex(0)

          for (i <- 0 until 2) {
            io.outCtrlSignals(i + 1) := ctrlSimple(i)

          }

          for (i <- 0 until 3) {
            io.valid(i) := true.B
          }
          for (i <- 3 until 6) {
            io.valid(i) := false.B
          }
        }
        is(2.U) {
          for (i <- 0 until 2) {
            io.outCtrlSignals(i) := ctrlComplex(i)

          }
          for (i <- 0 until 2) {
            io.outCtrlSignals(i + 2) := ctrlSimple(i)

          }

          for (i <- 0 until 4) {
            io.valid(i) := true.B
          }
          for (i <- 4 until 6) {
            io.valid(i) := false.B
          }
        }
        is(3.U) {
          for (i <- 0 until 3) {
            io.outCtrlSignals(i) := ctrlComplex(i)

          }
          for (i <- 0 until 2) {
            io.outCtrlSignals(i + 3) := ctrlSimple(i)

          }

          for (i <- 0 until 5) {
            io.valid(i) := true.B
          }
          for (i <- 5 until 6) {
            io.valid(i) := false.B
          }
        }
        is(4.U) {
          for (i <- 0 until 4) {
            io.outCtrlSignals(i) := ctrlComplex(i)

          }
          for (i <- 0 until 2) {
            io.outCtrlSignals(i + 4) := ctrlSimple(i)

          }
          for (i <- 0 until 6) {
            io.valid(i) := true.B
          }

        }

      }

    }
    is("b010000".U) {
      //io.strIndex := 4.U
      switch(num) {
        is(1.U) {
          io.outCtrlSignals(0) := ctrlComplex(0)

          for (i <- 0 until 3) {
            io.outCtrlSignals(i + 1) := ctrlSimple(i)

          }

          for (i <- 0 until 4) {
            io.valid(i) := true.B
          }
          for (i <- 4 until 6) {
            io.valid(i) := false.B
          }
        }
        is(2.U) {
          for (i <- 0 until 2) {
            io.outCtrlSignals(i) := ctrlComplex(i)

          }
          for (i <- 0 until 3) {
            io.outCtrlSignals(i + 2) := ctrlSimple(i)

          }

          for (i <- 0 until 5) {
            io.valid(i) := true.B
          }
          for (i <- 5 until 6) {
            io.valid(i) := false.B
          }
        }
        is(3.U) {
          for (i <- 0 until 3) {
            io.outCtrlSignals(i) := ctrlComplex(i)

          }
          for (i <- 0 until 3) {
            io.outCtrlSignals(i + 3) := ctrlSimple(i)

          }

          for (i <- 0 until 6) {
            io.valid(i) := true.B
          }

        }

      }

    }
    is("b100000".U) {
      //io.strIndex := 5.U
      switch(num) {
        is(1.U) {
          io.outCtrlSignals(0) := ctrlComplex(0)

          for (i <- 0 until 4) {
            io.outCtrlSignals(i + 1) := ctrlSimple(i)

          }

          for (i <- 0 until 5) {
            io.valid(i) := true.B
          }
          for (i <- 5 until 6) {
            io.valid(i) := false.B
          }
        }
        is(2.U) {
          for (i <- 0 until 2) {
            io.outCtrlSignals(i) := ctrlComplex(i)

          }
          for (i <- 0 until 4) {
            io.outCtrlSignals(i + 2) := ctrlSimple(i)

          }

          for (i <- 0 until 6) {
            io.valid(i) := true.B
          }

        }

      }

    }
  }

}

object VectorDivGen extends App {
  (new ChiselStage).emitVerilog(new VectorDiv, args)
}