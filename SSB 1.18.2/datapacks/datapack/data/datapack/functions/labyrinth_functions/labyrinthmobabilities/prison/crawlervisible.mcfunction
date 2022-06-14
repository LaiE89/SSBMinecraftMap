item replace entity @s armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Crawler\"}"},SkullOwner:{Id:[I;978207038,-569751173,-1930231128,1466778797],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmZjZGFlNTg2YjUyNDAzYjkyYjE4NTdlZTQzMzFiYWM2MzZhZjA4YmFiOTJiYTU3NTBhNTRhODMzMzFhNjM1MyJ9fX0="}]}}}
item replace entity @s armor.chest with minecraft:leather_chestplate{Unbreakable:1,display:{color:1908001}}
item replace entity @s armor.legs with minecraft:leather_leggings{Unbreakable:1,display:{color:1908001}}
item replace entity @s armor.feet with minecraft:leather_boots{Unbreakable:1,display:{color:1908001}}
particle minecraft:squid_ink ~ ~1 ~ 0 1 0 0.1 10
playsound minecraft:entity.enderman.scream neutral @a[distance=..8] ~ ~ ~ 1 0 1
tag @s remove labyrinthcrawler_Appear