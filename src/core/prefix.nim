#[ 
  @file: 
    prefix.nim
  @author: 
    Lorenzo Liuzzo
  @description: 
    This file contains the definition of the 'Prefix'
  @date: 
    2023-09-13
  @copywrite: 
    2023 Lorenzo Liuzzo - GPL3
]#

import macros

type
  Prefix* = object
    name*:   string  # Name of the prefix (e.g., "kilo")
    symbol*: string    # Character representation (e.g., "k")
    factor*: float64 # Value as a power of ten (e.g., 1e3)

macro createPrefix*(Name: untyped, Symbol: string, Factor: float64): untyped =
  result = quote do:
    const `Name`* = Prefix(name: astToStr(`Name`), symbol: `Symbol`, factor: `Factor`)

createPrefix(deca, "D", 1.0e1)
createPrefix(hecto, "h", 1.0e2)
createPrefix(kilo, "k", 1.0e3)
createPrefix(mega, "M", 1.0e6)
createPrefix(giga, "G", 1.0e9)
createPrefix(tera, "T", 1.0e12)
createPrefix(peta, "P", 1.0e15)
createPrefix(exa, "E", 1.0e18)
createPrefix(zetta, "Z", 1.0e21)
createPrefix(yotta, "Y", 1.0e24)
createPrefix(deci, "d", 1.0e-1)
createPrefix(centi, "c", 1.0e-2)
createPrefix(milli, "m", 1.0e-3)
createPrefix(micro, "u", 1.0e-6)
createPrefix(nano, "n", 1.0e-9)
createPrefix(pico, "p", 1.0e-12)
createPrefix(femto, "f", 1.0e-15)
createPrefix(atto, "a", 1.0e-18)
createPrefix(zepto, "z", 1.0e-21)
createPrefix(yocto, "y", 1.0e-24)

const SIPrefixes*: seq[Prefix] = @[deca, hecto, kilo, mega, giga, tera, peta, exa, zetta, yotta, deci, centi, milli, micro, nano, pico, femto, atto, zepto, yocto]