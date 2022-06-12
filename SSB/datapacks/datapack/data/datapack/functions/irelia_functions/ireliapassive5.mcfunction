scoreboard players add @s RaycastTimer 1
execute if entity @e[tag=IreliaStuns2,type=armor_stand] run scoreboard players set @s RaycastTimer 2222
execute as @s[scores={RaycastTimer=..1000}] positioned ^ ^ ^0.5 run function datapack:irelia_functions/ireliapassive5