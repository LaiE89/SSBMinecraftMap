particle block{block_state:"minecraft:dirt"} ~ ~0.2 ~ 1 0 1 0 100 force
playsound minecraft:entity.ender_dragon.flap neutral @a[distance=..10] ~ ~ ~ 3 1 1
scoreboard players set @s kits.raycastTick 0 
execute at @s positioned ~ ~ ~ rotated ~ 0 run function kits:char/kiryu/quickstepdirection
scoreboard players set @s kits.ability1CD 0
