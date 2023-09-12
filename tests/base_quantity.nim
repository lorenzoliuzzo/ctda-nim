import ../src/core/base_quantity
import ../src/basis as bs
# import ctda
# from ctda import BaseQuantity

let velocity = BaseQuantity(name: "velocity", length: 1, time: -1)

assert velocity.length == 1
assert velocity.time == -1

echo velocity

let massBase = bs.mass
echo massBase
assert massBase.mass == 1