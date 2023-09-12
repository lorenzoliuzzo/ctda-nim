## Quantity template meta-structure
template quantity[ValueT: untyped, UnitT: untyped] =
  type Quantity = object
    baseT: UnitT.BaseT
    unitT: UnitT
    valueT: ValueT
    value: ValueT

  proc `init`[ValueT](self: var Quantity[ValueT, UnitT], value: ValueT) =
    self.value = value

  proc `init`[ValueT](self: var Quantity[ValueT, UnitT], value: ValueT) =
    self.value = value

  proc `init`[ValueT](self: var Quantity[ValueT, UnitT], other: Quantity[ValueT, UnitT]) =
    self.value = other.value

  proc `init`[ValueT](self: var Quantity[ValueT, UnitT], other: Quantity[ValueT, UnitT]) =
    self.value = other.value

  proc `[]`[ValueT](self: Quantity[ValueT, UnitT], i: int): Quantity[ValueT, UnitT] =
    return Quantity(self.value[i])

when defined(CTDA_QUANTITY_ACCESS_W_CURVY_BRACKETS):
  proc `[]`[ValueT](self: Quantity[ValueT, UnitT], i: int, j: int): Quantity[ValueT, UnitT] =
    return Quantity(self.value[i][j])

  proc `[]`[ValueT](self: Quantity[ValueT, UnitT], i: int, j: int, k: int): Quantity[ValueT, UnitT] =
    return Quantity(self.value[i][j][k])

