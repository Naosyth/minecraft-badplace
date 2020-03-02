# give @p phantom_membrane{display:{Name:'{"text":"Levitation Charm","color":"gold","bold":true}',Lore:['{"text":"Sneak while holding in your off hand","color":"white","italic":true}','{"text":"Consumes XP for fuel","color":"white","italic":true}']},HideFlags:32,LevitationCharm:1} 1

# apply levitation
execute as @a[scores={Sneak=1..},level=1..,nbt={Inventory:[{Slot:-106b,tag:{LevitationCharm:1}}]}] run effect give @s minecraft:levitation 1 0 true

# play sound
execute if score 2t Timers matches 0 positioned as @a[scores={Sneak=1..},level=1..,nbt={Inventory:[{Slot:-106b,tag:{LevitationCharm:1}}]}] run playsound minecraft:block.beacon.ambient ambient @a[distance=..10] ~ ~ ~ 1 1.5

# remove 1 xp every 2 ticks
execute if score 2t Timers matches 0 as @a[scores={Sneak=1..},level=1..,nbt={Inventory:[{Slot:-106b,tag:{LevitationCharm:1}}]}] run experience add @s -1 points
