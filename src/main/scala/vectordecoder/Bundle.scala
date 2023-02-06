package vectordecoder

import chisel3._
import chisel3.util._


object SrcType {
  def imm = "b000".U

  def pc = "b000".U

  def xp = "b001".U

  def fp = "b010".U

  def vp = "b100".U

  // alias
  def reg = this.xp

  def DC = imm // Don't Care

  def X = BitPat("b???")

  def isPc(srcType: UInt) = srcType === pc

  def isImm(srcType: UInt) = srcType === imm

  def isReg(srcType: UInt) = srcType(0)

  def isFp(srcType: UInt) = srcType(1)

  def isVp(srcType: UInt) = srcType(2)

  def isPcOrImm(srcType: UInt) = isPc(srcType) || isImm(srcType)

  def apply() = UInt(3.W)
}

object FuType {
  def jmp = "b0000".U

  def i2f = "b0001".U

  def csr = "b0010".U

  def alu = "b0110".U

  def mul = "b0100".U

  def div = "b0101".U

  def fence = "b0011".U

  def bku = "b0111".U

  def fmac = "b1000".U

  def fmisc = "b1011".U

  def fDivSqrt = "b1010".U

  def ldu = "b1100".U

  def stu = "b1101".U

  def mou = "b1111".U // for amo, lr, sc, fence

  def vipu = "b11000".U

  def vfpu = "b11001".U

  def vldu = "b11100".U

  def vstu = "b11101".U

  def X = BitPat("b????")

  def num = 18

  def apply() = UInt(log2Up(num).W)

  def isIntExu(fuType: UInt) = !fuType(3)

  def isJumpExu(fuType: UInt) = fuType === jmp

  def isFpExu(fuType: UInt) = fuType(3, 2) === "b10".U

  def isMemExu(fuType: UInt) = fuType(3, 2) === "b11".U

  def isLoadStore(fuType: UInt) = isMemExu(fuType) && !fuType(1)

  def isStoreExu(fuType: UInt) = isMemExu(fuType) && fuType(0)

  def isAMO(fuType: UInt) = fuType(1)

  def isFence(fuType: UInt) = fuType === fence

  def isSvinvalBegin(fuType: UInt, func: UInt, flush: Bool) = isFence(fuType) && func === FenceOpType.nofence && !flush

  def isSvinval(fuType: UInt, func: UInt, flush: Bool) = isFence(fuType) && func === FenceOpType.sfence && !flush

  def isSvinvalEnd(fuType: UInt, func: UInt, flush: Bool) = isFence(fuType) && func === FenceOpType.nofence && flush


  def jmpCanAccept(fuType: UInt) = !fuType(2)

  def mduCanAccept(fuType: UInt) = fuType(2) && !fuType(1) || fuType(2) && fuType(1) && fuType(0)

  def aluCanAccept(fuType: UInt) = fuType(2) && fuType(1) && !fuType(0)

  def fmacCanAccept(fuType: UInt) = !fuType(1)

  def fmiscCanAccept(fuType: UInt) = fuType(1)

  def loadCanAccept(fuType: UInt) = !fuType(0)

  def storeCanAccept(fuType: UInt) = fuType(0)

  def storeIsAMO(fuType: UInt) = fuType(1)

  val functionNameMap = Map(
    jmp.litValue() -> "jmp",
    i2f.litValue() -> "int_to_float",
    csr.litValue() -> "csr",
    alu.litValue() -> "alu",
    mul.litValue() -> "mul",
    div.litValue() -> "div",
    fence.litValue() -> "fence",
    bku.litValue() -> "bku",
    fmac.litValue() -> "fmac",
    fmisc.litValue() -> "fmisc",
    fDivSqrt.litValue() -> "fdiv_fsqrt",
    ldu.litValue() -> "load",
    stu.litValue() -> "store",
    mou.litValue() -> "mou"
  )
}

object FenceOpType {
  def fence = "b10000".U

  def sfence = "b10001".U

  def fencei = "b10010".U

  def nofence = "b00000".U
}

object FuOpType {
  def apply() = UInt(8.W)

  def X = BitPat("b???????")
}

object SelImm {
  def IMM_X = "b0111".U

  def IMM_S = "b0000".U

  def IMM_SB = "b0001".U

  def IMM_U = "b0010".U

  def IMM_UJ = "b0011".U

  def IMM_I = "b0100".U

  def IMM_Z = "b0101".U

  def INVALID_INSTR = "b0110".U

  def IMM_B6 = "b1000".U

  def IMM_OPIVIS = "b1001".U

  def IMM_OPIVIU = "b1010".U

  def IMM_VSETVLI = "b1100".U

  def IMM_VSETIVLI = "b1101".U

  def X = BitPat("b????")

  def apply() = UInt(4.W)
}

object SignExt {
  def apply(a: UInt, len: Int): UInt = {
    val aLen = a.getWidth
    val signBit = a(aLen-1)
    if (aLen >= len) a(len-1,0) else Cat(Fill(len - aLen, signBit), a)
  }
}

object ZeroExt {
  def apply(a: UInt, len: Int): UInt = {
    val aLen = a.getWidth
    if (aLen >= len) a(len-1,0) else Cat(0.U((len - aLen).W), a)
  }
}

abstract class Imm(val len: Int) extends Bundle {
  def toImm32(minBits: UInt): UInt = do_toImm32(minBits(len - 1, 0))
  def do_toImm32(minBits: UInt): UInt
  def minBitsFromInstr(instr: UInt): UInt
}

case class Imm_I() extends Imm(12) {
  override def do_toImm32(minBits: UInt): UInt = SignExt(minBits(len - 1, 0), 32)

  override def minBitsFromInstr(instr: UInt): UInt =
    Cat(instr(31, 20))
}

case class Imm_S() extends Imm(12) {
  override def do_toImm32(minBits: UInt): UInt = SignExt(minBits, 32)

  override def minBitsFromInstr(instr: UInt): UInt =
    Cat(instr(31, 25), instr(11, 7))
}

case class Imm_B() extends Imm(12) {
  override def do_toImm32(minBits: UInt): UInt = SignExt(Cat(minBits, 0.U(1.W)), 32)

  override def minBitsFromInstr(instr: UInt): UInt =
    Cat(instr(31), instr(7), instr(30, 25), instr(11, 8))
}

case class Imm_U() extends Imm(20){
  override def do_toImm32(minBits: UInt): UInt = Cat(minBits(len - 1, 0), 0.U(12.W))

  override def minBitsFromInstr(instr: UInt): UInt = {
    instr(31, 12)
  }
}

case class Imm_J() extends Imm(20){
  override def do_toImm32(minBits: UInt): UInt = SignExt(Cat(minBits, 0.U(1.W)), 32)

  override def minBitsFromInstr(instr: UInt): UInt = {
    Cat(instr(31), instr(19, 12), instr(20), instr(30, 25), instr(24, 21))
  }
}

case class Imm_Z() extends Imm(12 + 5){
  override def do_toImm32(minBits: UInt): UInt = minBits

  override def minBitsFromInstr(instr: UInt): UInt = {
    Cat(instr(19, 15), instr(31, 20))
  }
}

case class Imm_B6() extends Imm(6){
  override def do_toImm32(minBits: UInt): UInt = ZeroExt(minBits, 32)

  override def minBitsFromInstr(instr: UInt): UInt = {
    instr(25, 20)
  }
}

case class Imm_OPIVIS() extends Imm(5){
  override def do_toImm32(minBits: UInt): UInt = SignExt(minBits, 32)

  override def minBitsFromInstr(instr: UInt): UInt = {
    instr(19, 15)
  }
}
case class Imm_OPIVIU() extends Imm(5){
  override def do_toImm32(minBits: UInt): UInt = ZeroExt(minBits, 32)

  override def minBitsFromInstr(instr: UInt): UInt = {
    instr(19, 15)
  }
}

object ImmUnion {
  val I = Imm_I()
  val S = Imm_S()
  val B = Imm_B()
  val U = Imm_U()
  val J = Imm_J()
  val Z = Imm_Z()
  val B6 = Imm_B6()
  val OPIVIS = Imm_OPIVIS()
  val OPIVIU = Imm_OPIVIU()
  val imms = Seq(I, S, B, U, J, Z, B6, OPIVIS, OPIVIU)
  val maxLen = imms.maxBy(_.len).len
  val immSelMap = Seq(
    SelImm.IMM_I,
    SelImm.IMM_S,
    SelImm.IMM_SB,
    SelImm.IMM_U,
    SelImm.IMM_UJ,
    SelImm.IMM_Z,
    SelImm.IMM_B6,
    SelImm.IMM_OPIVIS,
    SelImm.IMM_OPIVIU
  ).zip(imms)
  println(s"ImmUnion max len: $maxLen")
}

object CommitType {
  def NORMAL = "b000".U // int/fp

  def BRANCH = "b001".U // branch

  def LOAD = "b010".U // load

  def STORE = "b011".U // store

  def apply() = UInt(3.W)

  def isFused(commitType: UInt): Bool = commitType(2)

  def isLoadStore(commitType: UInt): Bool = !isFused(commitType) && commitType(1)

  def lsInstIsStore(commitType: UInt): Bool = commitType(0)

  def isStore(commitType: UInt): Bool = isLoadStore(commitType) && lsInstIsStore(commitType)

  def isBranch(commitType: UInt): Bool = commitType(0) && !commitType(1) && !isFused(commitType)
}

object LookupTree {
  def apply[T <: Data](key: UInt, mapping: Iterable[(UInt, T)]): T =
    Mux1H(mapping.map(p => (p._1 === key, p._2)))
}

class CtrlSignals extends Bundle {
  val srcType = Vec(4, SrcType())
  val lsrc = Vec(4, UInt(6.W))
  val ldest = UInt(6.W)
  val fuType = FuType()
  val fuOpType = FuOpType()
  val rfWen = Bool()
  val fpWen = Bool()
  val vecWen = Bool()
  val mWen = Bool()
  val vxsatWen = Bool()
  val isXSTrap = Bool()
  val noSpecExec = Bool() // wait forward
  val blockBackward = Bool() // block backward
  val flushPipe = Bool() // This inst will flush all the pipe when commit, like exception but can commit
  val selImm = SelImm()
  val imm = UInt(ImmUnion.maxLen.W)
  val commitType = CommitType()
  //val fpu = new FPUCtrlSignals
  val isMove = Bool()
  val singleStep = Bool()
  // This inst will flush all the pipe when it is the oldest inst in ROB,
  // then replay from this inst itself
  val replayInst = Bool()

  /*private def allSignals = srcType.take(3) ++ Seq(fuType, fuOpType, rfWen, fpWen,
    isXSTrap, noSpecExec, blockBackward, flushPipe, selImm)

  def decode(inst: UInt, table: Iterable[(BitPat, List[BitPat])]): CtrlSignals = {
    val decoder = freechips.rocketchip.rocket.DecodeLogic(inst, XDecode.decodeDefault, table)
    allSignals zip decoder foreach { case (s, d) => s := d }
    commitType := DontCare
    this
  }*/
}