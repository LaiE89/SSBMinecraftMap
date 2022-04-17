playsound minecraft:entity.firework_rocket.shoot neutral @a[distance=..15] ~ ~ ~ 2 0 1
summon armor_stand ~ ~1.5 ~ {Tags:["TracerPulseBomb","launch","projectile"],DisabledSlots:2096896,Small:1b,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Engine Part\"}"},SkullOwner:{Id:[I;660836505,-1271050286,-1362343498,-1332159015],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGYxNGYzMTc5Yjg2ZjY5YjNlZmE3NDcyZGFjYWViMjMzOWY2MjkwZDJkODE3MzYyNzkzMzQ4YWJkOThlMDIxIn19fQ=="}]}}}}]}
tp @e[tag=TracerPulseBomb,type=armor_stand] @s
tp @e[tag=TracerPulseBomb,type=armor_stand] ~ ~1.35 ~
execute as @e[tag=TracerPulseBomb,type=armor_stand] at @s run function datapack:launch
scoreboard players set @s Ability3CD 0