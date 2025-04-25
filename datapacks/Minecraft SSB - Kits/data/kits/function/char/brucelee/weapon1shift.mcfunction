execute as @e[distance=..6,type=!#kits:non_entity,tag=!Invincible,tag=!Brucelee,tag=!InLabyrinth] at @s run function kits:char/brucelee/intimidationdamage
particle cloud ~ ~ ~ 2 0 2 0 50 force
particle flame ~ ~ ~ 2 0 2 0 100 force
playsound minecraft:entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 2 1 1
scoreboard players set @s kits.ability4CD 0
