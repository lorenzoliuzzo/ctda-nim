# file: base_quantities.nim

## Define a template meta-structure containing dimensional information
type
  BaseQuantity = object
    length, time, mass, temperature, electric_current, substance_amount, luminous_intensity: int

## Define base_quantity based on the SI system
const length = BaseQuantity(length: 1, time: 0, mass: 0, temperature: 0, electric_current: 0, substance_amount: 0, luminous_intensity: 0)
const time = BaseQuantity(length: 0, time: 1, mass: 0, temperature: 0, electric_current: 0, substance_amount: 0, luminous_intensity: 0)
const mass = BaseQuantity(length: 0, time: 0, mass: 1, temperature: 0, electric_current: 0, substance_amount: 0, luminous_intensity: 0)
const temperature = BaseQuantity(length: 0, time: 0, mass: 0, temperature: 1, electric_current: 0, substance_amount: 0, luminous_intensity: 0)
const electric_current = BaseQuantity(length: 0, time: 0, mass: 0, temperature: 0, electric_current: 1, substance_amount: 0, luminous_intensity: 0)
const substance_amount = BaseQuantity(length: 0, time: 0, mass: 0, temperature: 0, electric_current: 0, substance_amount: 1, luminous_intensity: 0)
const luminous_intensity = BaseQuantity(length: 0, time: 0, mass: 0, temperature: 0, electric_current: 0, substance_amount: 0, luminous_intensity: 1)

export BaseQuantity, length, time, mass, temperature, electric_current, substance_amount, luminous_intensity