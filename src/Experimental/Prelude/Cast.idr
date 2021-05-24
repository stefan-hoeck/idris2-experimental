module Experimental.Prelude.Cast

export
Cast Nat String where
  cast = cast . natToInteger

export
Cast Int8 String where
  cast = prim__cast_Int8String

export
Cast Int16 String where
  cast = prim__cast_Int16String

export
Cast Int32 String where
  cast = prim__cast_Int32String

export
Cast Int64 String where
  cast = prim__cast_Int64String

export
Cast Bits8 String where
  cast = prim__cast_Bits8String

export
Cast Bits16 String where
  cast = prim__cast_Bits16String

export
Cast Bits32 String where
  cast = prim__cast_Bits32String

export
Cast Bits64 String where
  cast = prim__cast_Bits64String

export
Cast Int8 Integer where
  cast = prim__cast_Int8Integer

export
Cast Int16 Integer where
  cast = prim__cast_Int16Integer

export
Cast Int32 Integer where
  cast = prim__cast_Int32Integer

export
Cast Int64 Integer where
  cast = prim__cast_Int64Integer

export
Cast Int8 Int where
  cast = prim__cast_Int8Int

export
Cast Int16 Int where
  cast = prim__cast_Int16Int

export
Cast Int32 Int where
  cast = prim__cast_Int32Int

export
Cast Int64 Int where
  cast = prim__cast_Int64Int

export
Cast Integer Char where
  cast = prim__cast_IntegerChar

export
Cast Nat Char where
  cast = cast . natToInteger

export
Cast Bits8 Char where
  cast = prim__cast_Bits8Char

export
Cast Bits16 Char where
  cast = prim__cast_Bits16Char

export
Cast Bits32 Char where
  cast = prim__cast_Bits32Char

export
Cast Bits64 Char where
  cast = prim__cast_Bits64Char

export
Cast Int8 Char where
  cast = prim__cast_Int8Char

export
Cast Int16 Char where
  cast = prim__cast_Int16Char

export
Cast Int32 Char where
  cast = prim__cast_Int32Char

export
Cast Int64 Char where
  cast = prim__cast_Int64Char

export
Cast Bits8 Double where
  cast = prim__cast_Bits8Double

export
Cast Bits16 Double where
  cast = prim__cast_Bits16Double

export
Cast Bits32 Double where
  cast = prim__cast_Bits32Double

export
Cast Bits64 Double where
  cast = prim__cast_Bits64Double

export
Cast Int8 Double where
  cast = prim__cast_Int8Double

export
Cast Int16 Double where
  cast = prim__cast_Int16Double

export
Cast Int32 Double where
  cast = prim__cast_Int32Double

export
Cast Int64 Double where
  cast = prim__cast_Int64Double

export
Cast String Bits8 where
  cast = prim__cast_StringBits8

export
Cast Double Bits8 where
  cast = prim__cast_DoubleBits8

export
Cast Char Bits8 where
  cast = prim__cast_CharBits8

export
Cast Nat Bits8 where
  cast = cast . natToInteger

export
Cast Int8 Bits8 where
  cast = prim__cast_Int8Bits8

export
Cast Int16 Bits8 where
  cast = prim__cast_Int16Bits8

export
Cast Int32 Bits8 where
  cast = prim__cast_Int32Bits8

export
Cast Int64 Bits8 where
  cast = prim__cast_Int64Bits8

export
Cast String Bits16 where
  cast = prim__cast_StringBits16

export
Cast Double Bits16 where
  cast = prim__cast_DoubleBits16

export
Cast Char Bits16 where
  cast = prim__cast_CharBits16

export
Cast Nat Bits16 where
  cast = cast . natToInteger

export
Cast Int8 Bits16 where
  cast = prim__cast_Int8Bits16

export
Cast Int16 Bits16 where
  cast = prim__cast_Int16Bits16

export
Cast Int32 Bits16 where
  cast = prim__cast_Int32Bits16

export
Cast Int64 Bits16 where
  cast = prim__cast_Int64Bits16

export
Cast String Bits32 where
  cast = prim__cast_StringBits32

export
Cast Double Bits32 where
  cast = prim__cast_DoubleBits32

export
Cast Char Bits32 where
  cast = prim__cast_CharBits32

export
Cast Nat Bits32 where
  cast = cast . natToInteger

export
Cast Int8 Bits32 where
  cast = prim__cast_Int8Bits32

export
Cast Int16 Bits32 where
  cast = prim__cast_Int16Bits32

export
Cast Int32 Bits32 where
  cast = prim__cast_Int32Bits32

export
Cast Int64 Bits32 where
  cast = prim__cast_Int64Bits32

export
Cast String Bits64 where
  cast = prim__cast_StringBits64

export
Cast Double Bits64 where
  cast = prim__cast_DoubleBits64

export
Cast Char Bits64 where
  cast = prim__cast_CharBits64

export
Cast Nat Bits64 where
  cast = cast . natToInteger

export
Cast Int8 Bits64 where
  cast = prim__cast_Int8Bits64

export
Cast Int16 Bits64 where
  cast = prim__cast_Int16Bits64

export
Cast Int32 Bits64 where
  cast = prim__cast_Int32Bits64

export
Cast Int64 Bits64 where
  cast = prim__cast_Int64Bits64

-- To Int8

export
Cast String Int8 where
  cast = prim__cast_StringInt8

export
Cast Double Int8 where
  cast = prim__cast_DoubleInt8

export
Cast Char Int8 where
  cast = prim__cast_CharInt8

export
Cast Int Int8 where
  cast = prim__cast_IntInt8

export
Cast Integer Int8 where
  cast = prim__cast_IntegerInt8

export
Cast Nat Int8 where
  cast = cast . natToInteger

export
Cast Bits8 Int8 where
  cast = prim__cast_Bits8Int8

export
Cast Bits16 Int8 where
  cast = prim__cast_Bits16Int8

export
Cast Bits32 Int8 where
  cast = prim__cast_Bits32Int8

export
Cast Bits64 Int8 where
  cast = prim__cast_Bits64Int8

export
Cast Int16 Int8 where
  cast = prim__cast_Int16Int8

export
Cast Int32 Int8 where
  cast = prim__cast_Int32Int8

export
Cast Int64 Int8 where
  cast = prim__cast_Int64Int8

-- To Int16

export
Cast String Int16 where
  cast = prim__cast_StringInt16

export
Cast Double Int16 where
  cast = prim__cast_DoubleInt16

export
Cast Char Int16 where
  cast = prim__cast_CharInt16

export
Cast Int Int16 where
  cast = prim__cast_IntInt16

export
Cast Integer Int16 where
  cast = prim__cast_IntegerInt16

export
Cast Nat Int16 where
  cast = cast . natToInteger

export
Cast Bits8 Int16 where
  cast = prim__cast_Bits8Int16

export
Cast Bits16 Int16 where
  cast = prim__cast_Bits16Int16

export
Cast Bits32 Int16 where
  cast = prim__cast_Bits32Int16

export
Cast Bits64 Int16 where
  cast = prim__cast_Bits64Int16

export
Cast Int8 Int16 where
  cast = prim__cast_Int8Int16

export
Cast Int32 Int16 where
  cast = prim__cast_Int32Int16

export
Cast Int64 Int16 where
  cast = prim__cast_Int64Int16

-- To Int32

export
Cast String Int32 where
  cast = prim__cast_StringInt32

export
Cast Double Int32 where
  cast = prim__cast_DoubleInt32

export
Cast Char Int32 where
  cast = prim__cast_CharInt32

export
Cast Int Int32 where
  cast = prim__cast_IntInt32

export
Cast Integer Int32 where
  cast = prim__cast_IntegerInt32

export
Cast Nat Int32 where
  cast = cast . natToInteger

export
Cast Bits8 Int32 where
  cast = prim__cast_Bits8Int32

export
Cast Bits16 Int32 where
  cast = prim__cast_Bits16Int32

export
Cast Bits32 Int32 where
  cast = prim__cast_Bits32Int32

export
Cast Bits64 Int32 where
  cast = prim__cast_Bits64Int32

export
Cast Int8 Int32 where
  cast = prim__cast_Int8Int32

export
Cast Int16 Int32 where
  cast = prim__cast_Int16Int32

export
Cast Int64 Int32 where
  cast = prim__cast_Int64Int32

-- To Int64

export
Cast String Int64 where
  cast = prim__cast_StringInt64

export
Cast Double Int64 where
  cast = prim__cast_DoubleInt64

export
Cast Char Int64 where
  cast = prim__cast_CharInt64

export
Cast Int Int64 where
  cast = prim__cast_IntInt64

export
Cast Integer Int64 where
  cast = prim__cast_IntegerInt64

export
Cast Nat Int64 where
  cast = cast . natToInteger

export
Cast Bits8 Int64 where
  cast = prim__cast_Bits8Int64

export
Cast Bits16 Int64 where
  cast = prim__cast_Bits16Int64

export
Cast Bits32 Int64 where
  cast = prim__cast_Bits32Int64

export
Cast Bits64 Int64 where
  cast = prim__cast_Bits64Int64

export
Cast Int8 Int64 where
  cast = prim__cast_Int8Int64

export
Cast Int16 Int64 where
  cast = prim__cast_Int16Int64

export
Cast Int32 Int64 where
  cast = prim__cast_Int32Int64

-- To Nat

export
Cast String Nat where
  cast = integerToNat . cast

export
Cast Double Nat where
  cast = integerToNat . cast

export
Cast Char Nat where
  cast = believe_me . cast {to = Integer}

export
Cast Int Nat where
  cast = integerToNat . cast

export
Cast Integer Nat where
  cast = integerToNat

export
Cast Bits8 Nat where
  cast = believe_me . cast {to = Integer}

export
Cast Bits16 Nat where
  cast = believe_me . cast {to = Integer}

export
Cast Bits32 Nat where
  cast = believe_me . cast {to = Integer}

export
Cast Bits64 Nat where
  cast = believe_me . cast {to = Integer}

export
Cast Int8 Nat where
  cast = integerToNat . cast

export
Cast Int16 Nat where
  cast = integerToNat . cast

export
Cast Int32 Nat where
  cast = integerToNat . cast

export
Cast Int64 Nat where
  cast = integerToNat . cast
