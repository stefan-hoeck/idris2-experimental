module Experimental.Data.Bits

import Experimental.Prelude.Cast
import Experimental.Prelude.EqOrd
import Experimental.Prelude.Num
import public Data.DPair
import public Data.Bits

public export %inline
Bits Bits64 where
  Index       = Subset Nat (`LT` 64)
  (.&.)       = prim__and_Bits64
  (.|.)       = prim__or_Bits64
  xor         = prim__xor_Bits64
  bit         = (1 `shiftL`)
  zeroBits    = 0
  testBit x i = (x .&. bit i) /= 0
  shiftR x    = prim__shr_Bits64 x . cast . fst
  shiftL x    = prim__shl_Bits64 x . cast . fst
  complement  = xor 0xffffffffffffffff
  oneBits     = 0xffffffffffffffff

public export %inline
Bits Int8 where
  Index       = Subset Nat (`LT` 8)
  (.&.)       = prim__and_Int8
  (.|.)       = prim__or_Int8
  xor         = prim__xor_Int8
  bit         = (1 `shiftL`)
  zeroBits    = 0
  testBit x i = (x .&. bit i) /= 0
  shiftR x    = prim__shr_Int8 x . cast . fst
  shiftL x    = prim__shl_Int8 x . cast . fst
  complement  = xor (-1)
  oneBits     = (-1)

public export %inline
Bits Int16 where
  Index       = Subset Nat (`LT` 16)
  (.&.)       = prim__and_Int16
  (.|.)       = prim__or_Int16
  xor         = prim__xor_Int16
  bit         = (1 `shiftL`)
  zeroBits    = 0
  testBit x i = (x .&. bit i) /= 0
  shiftR x    = prim__shr_Int16 x . cast . fst
  shiftL x    = prim__shl_Int16 x . cast . fst
  complement  = xor (-1)
  oneBits     = (-1)

public export %inline
Bits Int32 where
  Index       = Subset Nat (`LT` 32)
  (.&.)       = prim__and_Int32
  (.|.)       = prim__or_Int32
  xor         = prim__xor_Int32
  bit         = (1 `shiftL`)
  zeroBits    = 0
  testBit x i = (x .&. bit i) /= 0
  shiftR x    = prim__shr_Int32 x . cast . fst
  shiftL x    = prim__shl_Int32 x . cast . fst
  complement  = xor (-1)
  oneBits     = (-1)

public export %inline
Bits Int64 where
  Index       = Subset Nat (`LT` 64)
  (.&.)       = prim__and_Int64
  (.|.)       = prim__or_Int64
  xor         = prim__xor_Int64
  bit         = (1 `shiftL`)
  zeroBits    = 0
  testBit x i = (x .&. bit i) /= 0
  shiftR x    = prim__shr_Int64 x . cast . fst
  shiftL x    = prim__shl_Int64 x . cast . fst
  complement  = xor (-1)
  oneBits     = (-1)

public export %inline
Bits Integer where
  Index       = Nat
  (.&.)       = prim__and_Integer
  (.|.)       = prim__or_Integer
  xor         = prim__xor_Integer
  bit         = (1 `shiftL`)
  zeroBits    = 0
  testBit x i = (x .&. bit i) /= 0
  shiftR x    = prim__shr_Integer x . natToInteger
  shiftL x    = prim__shl_Integer x . natToInteger
  complement  = xor (-1)
  oneBits     = (-1)

public export %inline
FiniteBits Bits64 where
  bitSize     = 64
  bitsToIndex = id

  popCount x0 =
    -- see https://stackoverflow.com/questions/109023/how-to-count-the-number-of-set-bits-in-a-64-bit-integer
    let x1 = (x0 .&. 0x5555555555555555) +
             ((x0 `shiftR` fromNat 1) .&. 0x5555555555555555)
        x2 = (x1 .&. 0x3333333333333333)
             + ((x1 `shiftR` fromNat 2) .&. 0x3333333333333333)
        x3 = ((x2 + (x2 `shiftR` fromNat 4)) .&. 0x0F0F0F0F)
        x4 = (x3 * 0x0101010101010101) `shiftR` fromNat 56
     in fromInteger $ cast x4

public export %inline
FiniteBits Int8 where
  bitSize     = 8
  bitsToIndex = id

  popCount x =
    -- see https://stackoverflow.com/questions/109023/how-to-count-the-number-of-set-bits-in-a-32-bit-integer
    -- We have to treat negative numbers separately in order to
    -- prevent overflows in the first addition.
    -- The top bit is therefore cleared and 1 is added in the end
    -- in case of a negative number
    let x0 = x `clearBit` fromNat 7
        x1 = (x0 .&. 0x55) + ((x0 `shiftR` fromNat 1) .&. 0x55)
        x2 = (x1 .&. 0x33) + ((x1 `shiftR` fromNat 2) .&. 0x33)
        x3 = ((x2 + (x2 `shiftR` fromNat 4)) .&. 0x0F)
        x4 = if x < 0 then x3 + 1 else x3
     in cast x4

public export %inline
FiniteBits Int16 where
  bitSize     = 16
  bitsToIndex = id

  popCount x =
    -- see https://stackoverflow.com/questions/109023/how-to-count-the-number-of-set-bits-in-a-32-bit-integer
    -- We have to treat negative numbers separately in order to
    -- prevent overflows in the first addition.
    -- The top bit is therefore cleared and 1 is added in the end
    -- in case of a negative number
    let x0 = x `clearBit` fromNat 15
        x1 = (x0 .&. 0x5555) + ((x0 `shiftR` fromNat 1) .&. 0x5555)
        x2 = (x1 .&. 0x3333) + ((x1 `shiftR` fromNat 2) .&. 0x3333)
        x3 = ((x2 + (x2 `shiftR` fromNat 4)) .&. 0x0F0F)
        x4 = (x3 * 0x0101) `shiftR` fromNat 8
        x5 = if x < 0 then x4 + 1 else x4
     in cast x5

public export %inline
FiniteBits Int32 where
  bitSize     = 32
  bitsToIndex = id

  popCount x =
    -- see https://stackoverflow.com/questions/109023/how-to-count-the-number-of-set-bits-in-a-32-bit-integer
    -- We have to treat negative numbers separately in order to
    -- prevent overflows in the first addition.
    -- The top bit is therefore cleared and 1 is added in the end
    -- in case of a negative number
    let x0 = x `clearBit` fromNat 31
        x1 = (x0 .&. 0x55555555) + ((x0 `shiftR` fromNat 1) .&. 0x55555555)
        x2 = (x1 .&. 0x33333333) + ((x1 `shiftR` fromNat 2) .&. 0x33333333)
        x3 = ((x2 + (x2 `shiftR` fromNat 4)) .&. 0x0F0F0F0F)
        x4 = (x3 * 0x01010101) `shiftR` fromNat 16
        x5 = if x < 0 then x4 + 1 else x4
     in cast x5

public export %inline
FiniteBits Int64 where
  bitSize     = 64
  bitsToIndex = id

  popCount x =
    -- see https://stackoverflow.com/questions/109023/how-to-count-the-number-of-set-bits-in-a-32-bit-integer
    -- We have to treat negative numbers separately in order to
    -- prevent overflows in the first addition.
    -- The top bit is therefore cleared and 1 is added in the end
    -- in case of a negative number
    let x0 = x `clearBit` fromNat 63
        x1 = (x0 .&. 0x5555555555555555)
           + ((x0 `shiftR` fromNat 1) .&. 0x5555555555555555)
        x2 = (x1 .&. 0x3333333333333333)
           + ((x1 `shiftR` fromNat 2) .&. 0x3333333333333333)
        x3 = ((x2 + (x2 `shiftR` fromNat 4)) .&. 0x0F0F0F0F0F0F0F0F)
        x4 = (x3 * 0x0101010101010101) `shiftR` fromNat 56
        x5 = if x < 0 then x4 + 1 else x4
     in cast x5
