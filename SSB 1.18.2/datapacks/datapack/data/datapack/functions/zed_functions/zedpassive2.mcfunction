scoreboard players add @s RaycastTimer 1
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222
execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run summon armor_stand ^ ^1 ^-1 {Tags:["zedshadow"],DisabledSlots:2096896,Invisible:1,Invulnerable:1,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Zed\"}"},SkullOwner:{Id:[I;844911766,-109258656,-790211895,-1250175385],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTU1NGEzMTQ2MWZhOTBiNmE3Y2ZjZmRmN2IxNzE2MTg5Y2YzZTdiMTczNDQ0ODg1NmU5YmFhZTc0ZTQ1In19fQ=="}]}}}}]}
execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run particle minecraft:smoke ^ ^1 ^-1 0.5 1 0.5 0 1000
execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^ ^ run playsound minecraft:entity.generic.extinguish_fire neutral @a[distance=..20] ~ ~ ~ 1 0.5 1
execute as @s[scores={RaycastTimer=31}] run summon armor_stand ^ ^ ^ {Tags:["zedshadow"],DisabledSlots:2096896,Invisible:1,Invulnerable:1,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Zed\"}"},SkullOwner:{Id:[I;844911766,-109258656,-790211895,-1250175385],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTU1NGEzMTQ2MWZhOTBiNmE3Y2ZjZmRmN2IxNzE2MTg5Y2YzZTdiMTczNDQ0ODg1NmU5YmFhZTc0ZTQ1In19fQ=="}]}}}}]}
execute as @s[scores={RaycastTimer=31}] run particle minecraft:smoke ^ ^ ^ 0.5 1 0.5 0 1000
execute as @s[scores={RaycastTimer=31}] run playsound minecraft:entity.generic.extinguish_fire neutral @a[distance=..20] ~ ~ ~ 1 0.5 1
execute as @s[scores={RaycastTimer=..30}] positioned ^ ^ ^0.5 run function datapack:zed_functions/zedpassive2