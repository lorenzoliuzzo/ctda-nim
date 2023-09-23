
 # i want to deduce the integer: newUnit(SI, "millimetre", "mm", length, 1e-3)



  # Quantity*[N: static[int], U: static[Unit[N]], T] = object
  #   value*: T
  #   unit*: U
  

# macro defPrefix*(Name: untyped, Symbol: string, Factor: float64): untyped =
#   result = quote do:
#     const `Name`* = Prefix(name: astToStr(`Name`), symbol: `Symbol`, factor: `Factor`)

# macro defUnit*(Name: untyped, Symbol: string, System: UnitSystem, Base: BaseQuantity, Prefix: Prefix): untyped =
#   result = quote do:
#     const `Name`* = Unit(name: astToStr(`Name`), symbol: `Symbol` + `Prefix.symbol`, system: `System`, base: `Base`, prefix: `Prefix`)

# ## Define base_quantity based on the SI system
# defBaseQuantity(length, Length = 1)
# defBaseQuantity(time, Time = 1)
# defBaseQuantity(mass, Mass = 1)
# defBaseQuantity(temperature, Temperature = 1)
# defBaseQuantity(electric_current, Electric_current = 1)
# defBaseQuantity(substance_amount, Substance_amount = 1)
# defBaseQuantity(luminous_intensity, Luminous_intensity = 1)

# defBaseQuantity(velocity, Length = 1, Time = -1)
# defBaseQuantity(acceleration, Length = 1, Time = -2)
# defBaseQuantity(force, Length = 1, Time = -2, Mass = 1)
# defBaseQuantity(pressure, Length = -1, Time = -2, Mass = 1)
# defBaseQuantity(energy, Length = 2, Time = -2, Mass = 1)

# defPrefix(deca, "D", 1.0e1)
# defPrefix(hecto, "h", 1.0e2)
# defPrefix(kilo, "k", 1.0e3)
# defPrefix(mega, "M", 1.0e6)
# defPrefix(giga, "G", 1.0e9)
# defPrefix(tera, "T", 1.0e12)
# defPrefix(peta, "P", 1.0e15)
# defPrefix(exa, "E", 1.0e18)
# defPrefix(zetta, "Z", 1.0e21)
# defPrefix(yotta, "Y", 1.0e24)
# defPrefix(deci, "d", 1.0e-1)
# defPrefix(centi, "c", 1.0e-2)
# defPrefix(milli, "m", 1.0e-3)
# defPrefix(micro, "u", 1.0e-6)
# defPrefix(nano, "n", 1.0e-9)
# defPrefix(pico, "p", 1.0e-12)
# defPrefix(femto, "f", 1.0e-15)
# defPrefix(atto, "a", 1.0e-18)
# defPrefix(zepto, "z", 1.0e-21)
# defPrefix(yocto, "y", 1.0e-24)


# for B in SI.basis:
#   for P in SI.prefixes:
#     SI.units.add(Unit[7](
#       name: P.name & B.name, 
#       symbol: P.symbol & B.name, 
#       base: B, 
#       prefix: P)
#     )

# echo "name: ", SI.name
# echo "basis: ", SI.basis
# echo "prefixes: ", SI.prefixes


# echo "SI basis:"
# for base in SI.basis:
#   echo base.name, ' ', base.powers

# echo "SI units:"
# for unit in SI.units:
#   echo unit