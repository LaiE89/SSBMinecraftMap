scoreboard players add @s RaycastTimer2 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer2 2222
execute as @s[scores={RaycastTimer2=2222..}] positioned ^ ^ ^ run summon armor_stand ~ ~ ~ {Tags:["IreliaStuns","flawlessduet"],DisabledSlots:2096896,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:iron_sword",Count:1b}]}
execute as @s[scores={RaycastTimer2=40}] positioned ^ ^ ^ run summon armor_stand ~ ~ ~ {Tags:["IreliaStuns","flawlessduet"],DisabledSlots:2096896,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:iron_sword",Count:1b}]}
execute as @s[scores={RaycastTimer2=..39}] positioned ^ ^ ^0.5 run function datapack:irelia_functions/ireliapassive3