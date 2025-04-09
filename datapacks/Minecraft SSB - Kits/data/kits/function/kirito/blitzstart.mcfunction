execute at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
execute at @s run playsound minecraft:block.beacon.power_select neutral @a[distance=..30] ~ ~ ~ 5 2 1
tag @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Kirito,tag=!InLabyrinth,limit=1,sort=nearest] add KiritoBlitzTarget
tag @s add KiritoBlitz
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["KiritoStandingLocation"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:30}
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:30,Tags:["KiritoBlitzLocation"]}
tag @s add Invincible
clear @s minecraft:player_head[custom_name="Kirito"]
clear @s minecraft:leather_chestplate[custom_name={"italic":false,"text":"The Real Black Swordsman\'s Shirt"}]
clear @s minecraft:netherite_leggings[custom_name={"italic":false,"text":"The Real Black Swordsman\'s Pants"}]
clear @s minecraft:leather_boots[custom_name={"italic":false,"text":"The Real Black Swordsman\'s Boots"}]
effect give @s minecraft:invisibility 1 0 true
effect give @s minecraft:resistance 1 9 true
effect give @s minecraft:weakness 1 9 true
effect give @s minecraft:levitation 1 0 true
scoreboard players set @s kits.ability3CD 0
