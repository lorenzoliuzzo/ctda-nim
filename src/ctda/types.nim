type
  Quantity = object of RootObj
    name*: string
    dimensions*: seq[string]
    powers*: seq[seq[int8]]

  SIQuantity = object of Quantity

proc initDimensions*(): seq[string] = 
  result = @[
    "Length", "Mass", "Time",
    "Electric Current", "Temperature",
    "Amount of Substance", "Luminous Intensity"
  ]

proc initPowers*(): seq[seq[int8]] = 
  result = @[
    @[1, 0, 0, 0, 0, 0, 0],
    @[0, 1, 0, 0, 0, 0, 0],
    @[0, 0, 1, 0, 0, 0, 0],
    @[0, 0, 0, 1, 0, 0, 0],
    @[0, 0, 0, 0, 1, 0, 0],
    @[0, 0, 0, 0, 0, 1, 0],
    @[0, 0, 0, 0, 0, 0, 1]
  ]

proc initSIQuantity*(): SIQuantity =
  result.name = "SI"
  result.dimensions = initDimensions()
  result.powers = initPowers()

# Example usage:
var siQuantity = initSIQuantity()
echo "Name:", siQuantity.name
echo "Dimensions:", siQuantity.dimensions
echo "Powers:"
for row in siQuantity.powers:
  echo row

  # Prefix* = object
  #   name*:   string
  #   sign*:   string
  #   factor*: float64


  # UnitSystem* = object
  #   name*:     string
  #   bases: seq[Quantity]
  #   prefixes: seq[Prefix]


