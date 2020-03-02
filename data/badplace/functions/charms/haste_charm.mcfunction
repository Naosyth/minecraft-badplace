# give @p quartz{display:{Name:'{"text":"Haste Charm","color":"gold","bold":true}',Lore:['{"text":"Hold in your offhand. Toggle on and off with sneak.","color":"white","italic":true}','{"text":"Consumes XP for fuel","color":"white","italic":true}']},HideFlags:63,HasteCharm:1} 1

# toggle charm
execute if score 20t Timers matches 0 as @a[scores={Sneak=1..},nbt={Inventory:[{Slot:-106b,tag:{HasteCharm:1}}]}] run replaceitem entity @s weapon.offhand minecraft:quartz{display:{Name:'{"text":"Haste Charm","color":"gold","bold":true}',Lore:['{"text":"Hold in your offhand. Toggle on and off with sneak","color":"white","italic":true}','{"text":"Consumes XP for fuel","color":"white","italic":true}']},Enchantments:[{id:"minecraft:efficiency",lvl:1s}],HideFlags:63,HasteCharm:2} 1
execute if score 20t Timers matches 10 as @a[scores={Sneak=1..},nbt={Inventory:[{Slot:-106b,tag:{HasteCharm:2}}]}] run replaceitem entity @s weapon.offhand minecraft:quartz{display:{Name:'{"text":"Haste Charm","color":"gold","bold":true}',Lore:['{"text":"Hold in your offhand. Toggle on and off with sneak","color":"white","italic":true}','{"text":"Consumes XP for fuel","color":"white","italic":true}']},HideFlags:63,HasteCharm:1} 1

# apply haste
execute as @a[level=1..,nbt={Inventory:[{Slot:-106b,tag:{HasteCharm:2}}]}] run effect give @s minecraft:haste 1 1 true

# remove 1 xp every 10 ticks
execute if score 10t Timers matches 0 as @a[level=1..,nbt={Inventory:[{Slot:-106b,tag:{HasteCharm:2}}]}] run experience add @s -1 points
