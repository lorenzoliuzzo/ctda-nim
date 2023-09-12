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

type
  BaseQuantity* = object
    name*: string
    length*:             int = 0
    time*:               int = 0
    mass*:               int = 0
    temperature*:        int = 0
    electric_current*:   int = 0
    substance_amount*:   int = 0
    luminous_intensity*: int = 0