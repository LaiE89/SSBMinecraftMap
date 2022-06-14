scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222

execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run tp @e[tag=LuffyKB] ^ ^ ^-1
execute if entity @s[scores={RaycastTimer=21}] run tp @e[tag=LuffyKB] ^ ^ ^

execute as @s[scores={RaycastTimer=2222..}] run kill @e[tag=LuffyPistolAngle,type=armor_stand]
execute if entity @s[scores={RaycastTimer=21}] run kill @e[tag=LuffyPistolAngle,type=armor_stand]

execute as @s[scores={RaycastTimer=2222..}] run kill @e[tag=LuffyPistolDestination,type=armor_stand]
execute if entity @s[scores={RaycastTimer=21}] run kill @e[tag=LuffyPistolDestination,type=armor_stand]

execute as @s[scores={RaycastTimer=2222..}] run tag @e[tag=LuffyPistolDestination,type=!armor_stand] remove LuffyPistolDestination
execute if entity @s[scores={RaycastTimer=21}] run tag @e[tag=LuffyPistolDestination,type=!armor_stand] remove LuffyPistolDestination

execute as @s[scores={RaycastTimer=2222..}] run kill @s
execute if entity @s[scores={RaycastTimer=21}] run kill @s

execute as @s[scores={RaycastTimer=..20}] positioned ^ ^ ^0.5 run function datapack:luffy_functions/luffypassive3