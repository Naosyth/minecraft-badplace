# give @p minecraft:redstone_torch{display:{Name:'{"text":"Sonar Helmet","color":"yellow","bold":true}',Lore:['{"text":"Put in off-hand to equip. Helmet slot must be empty.","color":"white","italic":true}','{"text":"Shows locations of nearby mobs","color":"white","italic":true}']},HideFlags:32,SonarHelmet:1} 1

# equip to helmet if in off-hand and helmet slot is empty
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{SonarHelmet:1}}]}] unless entity @s[nbt={Inventory:[{Slot:103b}]}] run replaceitem entity @s armor.head minecraft:redstone_torch{display:{Name:'{"text":"Sonar Helmet","color":"yellow","bold":true}',Lore:['{"text":"Put in off-hand to equip. Helmet slot must be empty.","color":"white","italic":true}','{"text":"Shows locations of nearby mobs","color":"white","italic":true}']},HideFlags:32,SonarHelmet:1} 1

execute as @a[nbt={Inventory:[{Slot:-106b,tag:{SonarHelmet:1}},{Slot:103b,tag:{SonarHelmet:1}}]}] run replaceitem entity @s weapon.offhand minecraft:air

# hlighlight near-by mobs when in helmet slot
execute positioned as @a[nbt={Inventory:[{Slot:103b,tag:{SonarHelmet:1}}]}] run effect give @e[type=!minecraft:player,distance=..16] minecraft:glowing 2 0 true
