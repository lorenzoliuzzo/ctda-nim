#[ 
  @file: 
    quantity.nim
  @author: 
    Lorenzo Liuzzo
  @description: 
    This file contains the definition of the 'Quantity'.
  @date: 
    2023-09-13
  @copywrite: 
    2023 Lorenzo Liuzzo - GPL3
]#

import base_quantity as bs
import prefix

type 
  Unit = object of bs.BaseQuantity
    prefix : Prefix

## Literals of the SI base unit
const base_unit_literals: array[7, string] = ["m", "s", "kg", "K", "A", "mol", "cd"]

## SI base units
const metre = Unit(base_quantity.length, prefix.none)
# const second = Unit(base_quantity.time, prefix.none)
# const kilogram = Unit(base_quantity.mass, prefix.none)
# const kelvin = Unit(base_quantity.temperature, prefix.none)
# const ampere = Unit(base_quantity.electric_current, prefix.none)
# const mole = Unit(base_quantity.amount_of_substance, prefix.none)
# const candela = Unit(base_quantity.luminous_intensity, prefix.none)

export Unit, base_unit_literals, 