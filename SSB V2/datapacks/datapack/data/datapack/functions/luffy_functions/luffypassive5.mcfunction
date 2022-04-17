scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222
execute if entity @e[tag=!Luffy,tag=!InLabyrinth,distance=..2,type=!experience_orb,type=!item,type=!arrow,type=!firework_rocket,type=!armor_stand] run scoreboard players set @s RaycastTimer 3222

execute as @s[scores={RaycastTimer=3222..}] positioned ^ ^ ^ run tag @e[tag=!Luffy,tag=!InLabyrinth,distance=..2,type=!experience_orb,type=!item,type=!arrow,type=!firework_rocket,type=!armor_stand] add LuffyPistolDestination
execute as @s[scores={RaycastTimer=2222..3000}] positioned ^ ^ ^ run summon armor_stand ~ ~ ~ {Tags:["LuffyPistolDestination"],Invisible:1b,NoGravity:1b,Invulnerable:1,DisabledSlots:2039583}
execute if entity @s[scores={RaycastTimer=31}] run summon armor_stand ~ ~ ~ {Tags:["LuffyPistolDestination"],Invisible:1b,NoGravity:1b,Invulnerable:1,DisabledSlots:2039583}

execute as @s[scores={RaycastTimer=..30}] positioned ^ ^ ^0.5 run function datapack:luffy_functions/luffypassive5