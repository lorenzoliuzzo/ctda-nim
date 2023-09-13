import macros

from types import BaseQuantity

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

## Define base_quantity based on the SI system
defBaseQuantity(length, Length = 1)
defBaseQuantity(time, Time = 1)
defBaseQuantity(mass, Mass = 1)
defBaseQuantity(temperature, Temperature = 1)
defBaseQuantity(electric_current, Electric_current = 1)
defBaseQuantity(substance_amount, Substance_amount = 1)
defBaseQuantity(luminous_intensity, Luminous_intensity = 1)

defBaseQuantity(velocity, Length = 1, Time = -1)
defBaseQuantity(acceleration, Length = 1, Time = -2)
defBaseQuantity(force, Length = 1, Time = -2, Mass = 1)
defBaseQuantity(pressure, Length = -1, Time = -2, Mass = 1)
defBaseQuantity(energy, Length = 2, Time = -2, Mass = 1)