scoreboard players add @s kits.raycastTick2 1
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Edward,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick2 2222
execute as @s[scores={kits.raycastTick2=2222..}] positioned ~ ~ ~ run execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Edward,tag=!InLabyrinth,limit=1,sort=nearest] at @s run function kits:char/edward/break/damage2
execute as @s[scores={kits.raycastTick2=..10}] positioned ^ ^ ^0.5 run function kits:char/edward/break/damage
