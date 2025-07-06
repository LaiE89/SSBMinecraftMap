scoreboard players add @s kits.raycastTick 1
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Edward,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 2222
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Edward,tag=!InLabyrinth,limit=1,sort=nearest] at @s run tag @s add EdwardCaged
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run scoreboard players set @e[tag=EdwardCaged] kits.raycastTick 0
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run schedule function kits:char/edward/cage/summon 10t append
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run scoreboard players set @s kits.ability2CD 0
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run function kits:char/edward/transmuteweaponback
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run execute at @s rotated ~ 0 run function kits:char/edward/circleparticles
execute as @s[scores={kits.raycastTick=2222..}] positioned ~ ~ ~ run execute at @s run playsound minecraft:entity.generic.death neutral @a[distance=..20] ~ ~ ~ 10 0.7 1
execute as @s[scores={kits.raycastTick=..29}] positioned ^ ^ ^0.5 run function kits:char/edward/cage/location
