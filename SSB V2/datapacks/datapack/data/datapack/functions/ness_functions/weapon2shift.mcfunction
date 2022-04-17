summon armor_stand ~ ~ ~ {Tags:["pkthunderness"],Invulnerable:1b,DisabledSlots:2039583,FallFlying:1b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11546150}}},{id:"leather_leggings",Count:1b,tag:{display:{color:3949738}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16701501}}},{id:"player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Ness\"}"},SkullOwner:{Id:[I;989919320,-1928705138,-1804460592,1218639422],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTlhYjUxN2JmNWQ0Njk4YTBkMTVhNDUxOTBkODMyZjdmZjVhOWI4ZTkyOWFhYjliZDM5ZjIwOTAzZmExNjA3OSJ9fX0="}]}}}}],HandItems:[{},{}],Pose:{Body:[0f,0f,360f],Head:[29f,0f,0f],LeftArm:[140f,170f,0f],RightArm:[140f,190f,0f]}}
tag @s add NessInThunder
particle minecraft:flash
playsound minecraft:entity.shulker.shoot neutral @a[distance=..30] ~ ~ ~ 10 0 1
effect give @s minecraft:invisibility 5 0 true
effect give @s minecraft:resistance 5 9 true
effect give @s minecraft:speed 5 9 true
effect give @s minecraft:weakness 5 9 true
replaceitem entity @s armor.head minecraft:light_blue_glazed_terracotta
clear @s minecraft:player_head{display:{Name:"{\"text\":\"Ness\"}"}}
clear @s minecraft:leather_chestplate{display:{Name:'[{"text":"Ness\' Shirt","italic":false,"color":"gold"}]'}}
clear @s minecraft:leather_leggings{display:{Name:'[{"text":"Ness\' Pants","italic":false,"color":"gold"}]'}}
clear @s minecraft:leather_boots{display:{Name:'[{"text":"Ness\' Shoes","italic":false,"color":"gold"}]'}}
scoreboard players set @s Ability3CD 0