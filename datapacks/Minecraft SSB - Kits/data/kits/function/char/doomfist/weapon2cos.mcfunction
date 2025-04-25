playsound minecraft:entity.generic.explode neutral @a[distance=..30] ~ ~ ~ 10 1.5 1
effect give @s minecraft:slow_falling 1 0 true
execute as @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Doomfist,tag=!InLabyrinth] at @s run function kits:char/doomfist/uppercutdamage
scoreboard players set @s kits.raycastTick 0
execute at @s positioned ~ ~1.5 ~ run function kits:char/doomfist/doomfistpassive3
scoreboard players set @s kits.ability2CD 0
