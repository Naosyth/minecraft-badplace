execute as @a[nbt={Inventory:[{Slot:-106b,tag:{BedaiusLootBag:1}}]}] run loot give @s loot badplace:bedaius
execute at @a[nbt={Inventory:[{Slot:-106b,tag:{BedaiusLootBag:1}}]}] run playsound minecraft:entity.player.levelup ambient @a[distance=..10] ~ ~ ~ 1 2
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{BedaiusLootBag:1}}]}] run replaceitem entity @s weapon.offhand air
