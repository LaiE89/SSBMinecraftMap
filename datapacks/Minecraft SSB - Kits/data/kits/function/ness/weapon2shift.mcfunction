summon armor_stand ~ ~ ~ {Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["pkthunderness"],Pose:{Body:[0f,0f,360f],LeftArm:[140f,170f,0f],RightArm:[140f,190f,0f],Head:[29f,0f,0f]},DisabledSlots:2039583,ArmorItems:[{id:"leather_boots",Count:1b,components:{"dyed_color":11546150}},{id:"leather_leggings",Count:1b,components:{"dyed_color":3949738}},{id:"leather_chestplate",Count:1b,components:{"dyed_color":16701501}},{id:"player_head",Count:1b,components:{"profile":{id:[I;989919320,-1928705138,-1804460592,1218639422],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTlhYjUxN2JmNWQ0Njk4YTBkMTVhNDUxOTBkODMyZjdmZjVhOWI4ZTkyOWFhYjliZDM5ZjIwOTAzZmExNjA3OSJ9fX0="}]}}}]}
tp @e[type=armor_stand,tag=pkthunderness] @s
summon interaction ~ ~ ~ {width:1f,height:2f,Tags:["pkthunderinteraction"]}
tag @s add NessInThunder
particle flash ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.shulker.shoot neutral @a[distance=..30] ~ ~ ~ 10 0 1
effect give @s minecraft:invisibility 5 0 true
effect give @s minecraft:resistance 5 9 true
effect give @s minecraft:speed 5 9 true
effect give @s minecraft:weakness 5 9 true
item replace entity @s armor.head with light_blue_glazed_terracotta 1
clear @s minecraft:player_head[custom_name="Ness"]
clear @s minecraft:leather_chestplate[custom_name={"color":"gold","italic":false,"text":"Ness\ Shirt"}']
clear @s minecraft:leather_leggings[custom_name={"color":"gold","italic":false,"text":"Ness\ Pants"}']
clear @s minecraft:leather_boots[custom_name={"color":"gold","italic":false,"text":"Ness\ Shoes"}']
scoreboard players set @s kits.ability3CD 0
