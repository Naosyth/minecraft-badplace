execute positioned as @e[type=minecraft:item,nbt={Item:{id:"minecraft:pufferfish"}}] if block ~ ~ ~ minecraft:cauldron[level=3] run weather clear 3600
execute positioned as @e[type=minecraft:item,nbt={Item:{id:"minecraft:pufferfish"}}] if block ~ ~ ~ minecraft:cauldron[level=3] run particle minecraft:fishing 15.52 4.5 11.70 1 1 1 0.05 100 force
execute positioned as @e[type=minecraft:item,nbt={Item:{id:"minecraft:pufferfish"}}] if block ~ ~ ~ minecraft:cauldron[level=3] run playsound minecraft:block.lava.extinguish block Naosyth ~ ~ ~ 2 0.75
execute positioned as @e[type=minecraft:item,nbt={Item:{id:"minecraft:pufferfish"}}] if block ~ ~ ~ minecraft:cauldron[level=3] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:pufferfish"}},distance=..1,limit=1]
