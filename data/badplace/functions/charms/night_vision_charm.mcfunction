# give @p spider_eye{display:{Name:'{"text":"Night Vision Charm","color":"gold","bold":true}',Lore:['{"text":"Hold in your offhand. Toggle on and off with sneak.","color":"white","italic":true}','{"text":"Consumes XP for fuel","color":"white","italic":true}']},HideFlags:63,NightVisionCharm:1} 1

# toggle charm
execute if score 20t Timers matches 0 as @a[scores={Sneak=1..},nbt={Inventory:[{Slot:-106b,tag:{NightVisionCharm:1}}]}] run replaceitem entity @s weapon.offhand minecraft:spider_eye{display:{Name:'{"text":"Night Vision Charm","color":"gold","bold":true}',Lore:['{"text":"Hold in your offhand. Toggle on and off with sneak","color":"white","italic":true}','{"text":"Consumes XP for fuel","color":"white","italic":true}']},Enchantments:[{id:"minecraft:efficiency",lvl:1s}],HideFlags:63,NightVisionCharm:2} 1
execute if score 20t Timers matches 10 as @a[scores={Sneak=1..},nbt={Inventory:[{Slot:-106b,tag:{NightVisionCharm:2}}]}] run replaceitem entity @s weapon.offhand minecraft:spider_eye{display:{Name:'{"text":"Night Vision Charm","color":"gold","bold":true}',Lore:['{"text":"Hold in your offhand. Toggle on and off with sneak","color":"white","italic":true}','{"text":"Consumes XP for fuel","color":"white","italic":true}']},HideFlags:63,NightVisionCharm:1} 1

# apply night vision
execute as @a[level=1..,nbt={Inventory:[{Slot:-106b,tag:{NightVisionCharm:2}}]}] run effect give @s minecraft:night_vision 30 0 true
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{NightVisionCharm:1}}]}] run effect clear @s minecraft:night_vision

# remove 1 xp every 5 ticks
execute if score 5t Timers matches 0 as @a[level=1..,nbt={Inventory:[{Slot:-106b,tag:{NightVisionCharm:2}}]}] run experience add @s -1 points
