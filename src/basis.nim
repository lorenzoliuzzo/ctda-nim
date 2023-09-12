from core/base_quantity import BaseQuantity

## Define base_quantity based on the SI system
const length*             = BaseQuantity(name: "length", length: 1)
const time*               = BaseQuantity(name: "time", time: 1)
const mass*               = BaseQuantity(name: "mass", mass: 1)
const temperature*        = BaseQuantity(name: "temperature", temperature: 1)
const electric_current*   = BaseQuantity(name: "electric_current", electric_current: 1)
const substance_amount*   = BaseQuantity(name: "substance_amount", substance_amount: 1)
const luminous_intensity* = BaseQuantity(name: "luminous_intensity", luminous_intensity: 1)