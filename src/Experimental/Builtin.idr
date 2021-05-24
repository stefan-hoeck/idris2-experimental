module Experimental.Builtin

%charLit fromChar

||| Interface for types that can be constructed from char literals.
public export
interface FromChar ty where
  constructor MkFromChar
  ||| Conversion from Char.
  fromChar : Char -> ty

%allow_overloads fromChar

%inline
public export
FromChar Char where
  fromChar s = s

%defaulthint
%inline
public export
defaultChar : FromChar Char
defaultChar = %search

%doubleLit fromDouble

||| Interface for types that can be constructed from double literals.
public export
interface FromDouble ty where
  constructor MkFromDouble
  ||| Conversion from Double.
  fromDouble : Double -> ty

%allow_overloads fromDouble

%inline
public export
FromDouble Double where
  fromDouble s = s

%defaulthint
%inline
public export
defaultDouble : FromDouble Double
defaultDouble = %search
