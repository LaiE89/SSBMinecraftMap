summon armor_stand ~ ~1.5 ~ {Tags:["BradFBomb","launch","projectile"],DisabledSlots:2096896,Small:1b,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Bottle of Wine\"}"},SkullOwner:{Id:[I;-733558164,2016231772,-1917138577,-484030463],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmQyYjY1Yjc5YjQ5MDQ1MTRhMGZjNzIzMmVhODlhOWU4YzZhYzYwZWUzZGJhMWI1OTc1Yjc3NTUxMjczMzhhNCJ9fX0="}]}}}}]}
tp @e[tag=BradFBomb,type=armor_stand] @s
tp @e[tag=BradFBomb,type=armor_stand] ~ ~1.35 ~
execute as @e[tag=BradFBomb,type=armor_stand] at @s run function datapack:launch
