#[ 
  @file: 
    base_quantity.nim
  @author: 
    Lorenzo Liuzzo
  @description: 
    This file contains the definition of the 'BaseQuantity'.
    The physical information is stored in the form of exponents of the base quantities of the SI system.
  @date: 
    2023-09-13
  @copywrite: 
    2023 Lorenzo Liuzzo - GPL3
]#

import macros

type
  BaseQuantity* = object
    name*:               string
    length*:             int
    time*:               int
    mass*:               int
    temperature*:        int
    electric_current*:   int
    substance_amount*:   int
    luminous_intensity*: int

macro createBaseQuantity*(Name: untyped, 
                          Length: int = 0, 
                          Time: int = 0, 
                          Mass: int = 0, 
                          Temperature: int = 0, 
                          Electric_current: int = 0, 
                          Substance_amount: int = 0, 
                          Luminous_intensity: int = 0): untyped =
  result = quote do:
    const `Name`* = BaseQuantity(
      name: astToStr(`Name`), 
      length: `Length`, 
      time: `Time`, 
      mass: `Mass`, 
      temperature: `Temperature`, 
      electric_current: `Electric_current`, 
      substance_amount: `Substance_amount`, 
      luminous_intensity: `Luminous_intensity`
    )

## Define base_quantity based on the SI system
createBaseQuantity(length, Length = 1)
createBaseQuantity(time, Time = 1)
createBaseQuantity(mass, Mass = 1)
createBaseQuantity(temperature, Temperature = 1)
createBaseQuantity(electric_current, Electric_current = 1)
createBaseQuantity(substance_amount, Substance_amount = 1)
createBaseQuantity(luminous_intensity, Luminous_intensity = 1)

createBaseQuantity(velocity, Length = 1, Time = -1)
createBaseQuantity(acceleration, Length = 1, Time = -2)
createBaseQuantity(force, Length = 1, Time = -2, Mass = 1)

const SIBasis*: seq[BaseQuantity] = @[length, time, mass, temperature, electric_current, substance_amount, luminous_intensity]
const SIDerivedBasis*: seq[BaseQuantity] = @[velocity, acceleration, force]

const Basis*: seq[BaseQuantity] = SIBasis & SIDerivedBasis