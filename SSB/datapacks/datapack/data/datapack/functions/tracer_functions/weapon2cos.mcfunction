tag @s add TracerRecall
data modify entity @e[type=minecraft:area_effect_cloud,tag=TracerLatestRecall,limit=1] Duration set value 1000
playsound minecraft:entity.illusioner.mirror_move neutral @a[distance=..10] ~ ~ ~ 10 1 1
particle minecraft:dust 0 1 1 3 ~ ~1 ~ 1 1 1 0 100
particle minecraft:flash ~ ~1 ~
effect give @s minecraft:regeneration 5 4 true
effect give @s minecraft:invisibility 5 0 true
effect give @s minecraft:resistance 5 9 true
effect give @s minecraft:levitation 5 0 true
clear @s minecraft:player_head{display:{Name:"{\"text\":\"Tracer\"}"}}
clear @s leather_chestplate{display:{Name:'[{"text":"Tracer\'s Shirt","italic":false,"color":"aqua"}]'}}
clear @s leather_leggings{display:{Name:'[{"text":"Tracer\'s Pants","italic":false,"color":"aqua"}]'}}
clear @s leather_boots{display:{Name:'[{"text":"Tracer\'s Shoes","italic":false,"color":"aqua"}]'}}

scoreboard players set @s Ability2CD 0