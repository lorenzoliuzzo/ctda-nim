import macros

from types import Prefix

macro defPrefix*(Name: untyped, Sign: string, Factor: float64): untyped =
  result = quote do:
    const `Name`* = Prefix(name: astToStr(`Name`), sign: `Sign`, factor: `Factor`)

defPrefix(deca, "D", 1.0e1)
defPrefix(hecto, "h", 1.0e2)
defPrefix(kilo, "k", 1.0e3)
defPrefix(mega, "M", 1.0e6)
defPrefix(giga, "G", 1.0e9)
defPrefix(tera, "T", 1.0e12)
defPrefix(peta, "P", 1.0e15)
defPrefix(exa, "E", 1.0e18)
defPrefix(zetta, "Z", 1.0e21)
defPrefix(yotta, "Y", 1.0e24)
defPrefix(deci, "d", 1.0e-1)
defPrefix(centi, "c", 1.0e-2)
defPrefix(milli, "m", 1.0e-3)
defPrefix(micro, "u", 1.0e-6)
defPrefix(nano, "n", 1.0e-9)
defPrefix(pico, "p", 1.0e-12)
defPrefix(femto, "f", 1.0e-15)
defPrefix(atto, "a", 1.0e-18)
defPrefix(zepto, "z", 1.0e-21)
defPrefix(yocto, "y", 1.0e-24)
