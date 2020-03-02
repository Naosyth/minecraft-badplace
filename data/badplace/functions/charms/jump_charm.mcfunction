# give @p rabbit_foot{display:{Name:'{"text":"Jump Charm","color":"gold","bold":true}',Lore:['{"text":"Hold in your offhand. Sneak jump to use.","color":"white","italic":true}']},JumpCharm:1} 1

# apply jump boost
execute as @a[scores={Sneak=1..},nbt={Inventory:[{Slot:-106b,tag:{JumpCharm:1}}]}] run effect give @s minecraft:jump_boost 1 1 true
