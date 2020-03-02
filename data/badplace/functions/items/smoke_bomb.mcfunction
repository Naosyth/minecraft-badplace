# give @p minecraft:potion{CustomPotionColor:6111581,display:{Name:'{"text":"Smoke Bomb","color":"yellow","bold":true}',Lore:['{"text":"Sneak while holding in your off-hand to activate","color":"white","italic":true}','{"text":"Consumed upon use","color":"white","italic":true}']},HideFlags:32,SmokeBomb:1} 1

# smoke cloud
execute positioned as @a[scores={Sneak=1..},nbt={Inventory:[{Slot:-106b,tag:{SmokeBomb:1}}]}] run particle minecraft:campfire_signal_smoke ~ ~ ~ 3 1 3 0 5000 force @a

# play sound
execute positioned as @a[scores={Sneak=1..},nbt={Inventory:[{Slot:-106b,tag:{SmokeBomb:1}}]}] run playsound minecraft:entity.firework_rocket.large_blast ambient @a[distance=..20] ~ ~ ~ 10 1.5

# highlight all non-sneaking entities in area
execute positioned as @a[scores={Sneak=1..},nbt={Inventory:[{Slot:-106b,tag:{SmokeBomb:1}}]}] as @e[type=!minecraft:item,distance=..7] unless entity @s[scores={Sneak=1..}] run effect give @s minecraft:glowing 5 1 true

# consume bomb
execute as @a[scores={Sneak=1..},nbt={Inventory:[{Slot:-106b,tag:{SmokeBomb:1}}]}] run replaceitem entity @s weapon.offhand air
