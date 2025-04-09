execute as @e[type=block_display,tag=EdwardWall] at @s run tp @s ~ ~3 ~
execute as @e[type=area_effect_cloud,tag=EdwardWallLocation] at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=area_effect_cloud,tag=EdwardWallLocation] at @s run playsound minecraft:entity.zombie.break_wooden_door neutral @a[distance=..50] ~ ~ ~ 5 0.75 1
