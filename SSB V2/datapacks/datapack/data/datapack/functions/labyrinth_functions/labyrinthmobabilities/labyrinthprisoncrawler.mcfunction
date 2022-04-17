execute as @e[type=zombie,tag=labyrinthcrawler] at @s unless entity @a[distance=..5] run replaceitem entity @s armor.head air
execute as @e[type=zombie,tag=labyrinthcrawler] at @s unless entity @a[distance=..5] run replaceitem entity @s armor.chest air
execute as @e[type=zombie,tag=labyrinthcrawler] at @s unless entity @a[distance=..5] run replaceitem entity @s armor.legs air
execute as @e[type=zombie,tag=labyrinthcrawler] at @s unless entity @a[distance=..5] run replaceitem entity @s armor.feet air
execute as @e[type=zombie,tag=labyrinthcrawler] at @s unless entity @a[distance=..5] run tag @s add labyrinthcrawler_Appear
execute as @e[type=zombie,tag=labyrinthcrawler_Appear] at @s if entity @a[distance=..5] run particle minecraft:squid_ink ~ ~1 ~ 0 1 0 0.1 10
execute as @e[type=zombie,tag=labyrinthcrawler_Appear] at @s if entity @a[distance=..5] run playsound minecraft:entity.enderman.scream neutral @a[distance=..8] ~ ~ ~ 1 0 1
execute as @e[type=zombie,tag=labyrinthcrawler_Appear] at @s if entity @a[distance=..5] run tag @s remove labyrinthcrawler_Appear
execute as @e[type=zombie,tag=labyrinthcrawler] at @s if entity @a[distance=..5] run replaceitem entity @s armor.head minecraft:player_head{display:{Name:"{\"text\":\"Crawler\"}"},SkullOwner:{Id:[I;978207038,-569751173,-1930231128,1466778797],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmZjZGFlNTg2YjUyNDAzYjkyYjE4NTdlZTQzMzFiYWM2MzZhZjA4YmFiOTJiYTU3NTBhNTRhODMzMzFhNjM1MyJ9fX0="}]}}}
execute as @e[type=zombie,tag=labyrinthcrawler] at @s if entity @a[distance=..5] run replaceitem entity @s armor.chest minecraft:leather_chestplate{Unbreakable:1,display:{color:1908001}}
execute as @e[type=zombie,tag=labyrinthcrawler] at @s if entity @a[distance=..5] run replaceitem entity @s armor.legs minecraft:leather_leggings{Unbreakable:1,display:{color:1908001}}
execute as @e[type=zombie,tag=labyrinthcrawler] at @s if entity @a[distance=..5] run replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1,display:{color:1908001}}