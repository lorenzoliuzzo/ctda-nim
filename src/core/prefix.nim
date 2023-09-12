# file: prefix.nim

type
  Prefix = object
    symbol: char        # Character representation (e.g., "k")
    factor: float        # Value as a power of ten (e.g., 3.0 for Kilo)

# Create a table to store the prefixes
const deca = Prefix(symbol: 'D', factor: 1e1)
const hecto = Prefix(symbol: 'h', factor: 1e2)
const kilo = Prefix(symbol: 'k', factor: 1e3)
const mega = Prefix(symbol: 'M', factor: 1e6)
const giga = Prefix(symbol: 'G', factor: 1e9)
const tera = Prefix(symbol: 'T', factor: 1e12)
const peta = Prefix(symbol: 'P', factor: 1e15)
const exa = Prefix(symbol: 'E', factor: 1e18)
const zetta = Prefix(symbol: 'Z', factor: 1e21)
const yotta = Prefix(symbol: 'Y', factor: 1e24)
const deci = Prefix(symbol: 'd', factor: 1e-1)
const centi = Prefix(symbol: 'c', factor: 1e-2)
const milli = Prefix(symbol: 'm', factor: 1e-3)
const micro = Prefix(symbol: 'u', factor: 1e-6)
const nano = Prefix(symbol: 'n', factor: 1e-9)
const pico = Prefix(symbol: 'p', factor: 1e-12)
const femto = Prefix(symbol: 'f', factor: 1e-15)
const atto = Prefix(symbol: 'a', factor: 1e-18)
const zepto = Prefix(symbol: 'z', factor: 1e-21)
const yocto = Prefix(symbol: 'y', factor: 1e-20)

const prefix_map = [
  yocto, zepto, atto, femto, pico, nano, micro, milli, centi, deci,
  deca, hecto, kilo, mega, giga, tera, peta, exa, zetta, yotta
]

export Prefix, prefix_map, deca, hecto, kilo, mega, giga, tera, peta, exa, zetta, yotta, deci, centi, milli, micro, nano, pico, femto, atto, zepto, yocto
