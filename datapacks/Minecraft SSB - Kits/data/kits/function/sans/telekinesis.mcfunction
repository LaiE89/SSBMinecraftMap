playsound minecraft:entity.arrow.hit_player neutral @a[distance=..50] ~ ~ ~ 10 1 1
scoreboard players set @s kits.raycastTick 0
execute at @s positioned ~ ~1.5 ~ run function kits:sans/sanspassive7
