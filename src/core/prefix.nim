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

type
  Prefix = object
    name: string    # Name of the prefix (e.g., "kilo")
    symbol: char    # Character representation (e.g., "k")
    factor: float64 # Value as a power of ten (e.g., 3.0 for Kilo)

proc newPrefix(name: string, symbol: char, factor: float64): Prefix =
  result.name = name
  result.symbol = symbol
  result.factor = factor

const
  SI_Prefix_List: seq[Prefix] = @[
    newPrefix("deca", 'D', 1e1),
    newPrefix("hecto", 'h', 1e2),
    newPrefix("kilo", 'k', 1e3),
    newPrefix("mega", 'M', 1e6),
    newPrefix("giga", 'G', 1e9),
    newPrefix("tera", 'T', 1e12),
    newPrefix("peta", 'P', 1e15),
    newPrefix("exa", 'E', 1e18),
    newPrefix("zetta", 'Z', 1e21),
    newPrefix("yotta", 'Y', 1e24),
    newPrefix("deci", 'd', 1e-1),
    newPrefix("centi", 'c', 1e-2),
    newPrefix("milli", 'm', 1e-3),
    newPrefix("micro", 'u', 1e-6),
    newPrefix("nano", 'n', 1e-9),
    newPrefix("pico", 'p', 1e-12),
    newPrefix("femto", 'f', 1e-15),
    newPrefix("atto", 'a', 1e-18),
    newPrefix("zepto", 'z', 1e-21),
    newPrefix("yocto", 'y', 1e-24)
  ]

proc findPrefix(name: string): Prefix =
  for prefix in SI_Prefix_List:
    if prefix.name == name:
      return prefix
  raise newException(Exception, "Prefix not found: " & name)

# Example usage:
let myPrefix: Prefix = findPrefix("kilo")
echo myPrefix  # Output: Prefix(name: "kilo", symbol: 'k', factor: 1000.0)