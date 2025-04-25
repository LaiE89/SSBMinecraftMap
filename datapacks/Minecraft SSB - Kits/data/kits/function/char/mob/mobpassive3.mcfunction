scoreboard players add @s kits.raycastTick2 1
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Mob,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick2 2222
execute as @s[scores={kits.raycastTick2=2222..}] positioned ^ ^ ^ run execute as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Mob,tag=!InLabyrinth] at @s run function kits:char/mob/mobliftdamage

execute as @s[scores={kits.raycastTick2=2222..}] run particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~ ~ 0.4 1 0.4 0 100 force
execute as @s[scores={kits.raycastTick2=2222..}] run playsound minecraft:entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 10 0.5 1
execute as @s[scores={kits.raycastTick2=2222..}] run scoreboard players set @s kits.ability3CD 0

execute as @s[scores={kits.raycastTick2=..1111}] positioned ^ ^ ^0.5 run function kits:char/mob/mobpassive3
