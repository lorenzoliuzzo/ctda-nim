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
    length*:             int8
    time*:               int8
    mass*:               int8
    temperature*:        int8
    electric_current*:   int8
    substance_amount*:   int8
    luminous_intensity*: int8

macro defBaseQuantity*(Name: untyped, 
                       Length: int8 = 0, 
                       Time: int8 = 0, 
                       Mass: int8 = 0, 
                       Temperature: int8 = 0, 
                       Electric_current: int8 = 0, 
                       Substance_amount: int8 = 0, 
                       Luminous_intensity: int8 = 0) =
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


# const
#   SIBasis*: enum 
#     length, time, mass, temperature, electric_current, substance_amount, luminous_intensity

const SIBasis*: seq[BaseQuantity] = @[length, time, mass, temperature, electric_current, substance_amount, luminous_intensity]
const SIDerivedBasis*: seq[BaseQuantity] = @[velocity, acceleration, force]

const Basis*: seq[BaseQuantity] = SIBasis & SIDerivedBasis