import macros 

type 
  BaseQuantity*[N: static[int]] = object 
    name*: string
    powers*: array[N, int8]
  
  Unit*[N: static[int]] = object
    name*: string
    symbol*: string
    base*: BaseQuantity[N]
    prefix*: float64
  
  UnitSystem*[N: static[int]] = object
    name*: string
    basis*: array[N, BaseQuantity[N]]
    units*: seq[Unit[N]]

var SI* = UnitSystem[7](
  name: "SI",
  basis: [
    BaseQuantity[7](name: "Length", powers: [1, 0, 0, 0, 0, 0, 0]),
    BaseQuantity[7](name: "Mass", powers: [0, 1, 0, 0, 0, 0, 0]),
    BaseQuantity[7](name: "Time", powers: [0, 0, 1, 0, 0, 0, 0]),
    BaseQuantity[7](name: "Electric Current", powers: [0, 0, 0, 1, 0, 0, 0]),
    BaseQuantity[7](name: "Temperature", powers: [0, 0, 0, 0, 1, 0, 0]),
    BaseQuantity[7](name: "Amount of Substance", powers: [0, 0, 0, 0, 0, 1, 0]),
    BaseQuantity[7](name: "Luminous Intensity", powers: [0, 0, 0, 0, 0, 0, 1])
  ]
)

let length = BaseQuantity[7](name: "Length", powers: [1, 0, 0, 0, 0, 0, 0])
echo length

# macro defUnit[US: UnitSystem](name: untyped, symbol: string, base: BaseQuantity[US.N], prefix: float64 = 1.0): typed =
#   # US.units.add(Unit[US.N](name: name, symbol: symbol, base: base, prefix: prefix))
#   result = quote do:
#     const `name`* = Unit[US.N](name: `name`, symbol: `symbol`, base: `base`, prefix: `prefix`)

# defUnit[SI](millimetre, "mm", length, 1e-3)
# echo millimetre
