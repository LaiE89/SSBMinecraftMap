# rbd
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:100,Tags:["EkkoChronobreakImage"]}

effect give @s resistance 2 9 true
effect give @s minecraft:invisibility 2 0 true

clear @s player_head[custom_name="Ekko"] 1
clear @s leather_chestplate[custom_name={"color":"dark_aqua","italic":false,"text":"Ekko\'s Shirt"}] 1
clear @s leather_leggings[custom_name={"color":"dark_aqua","italic":false,"text":"Ekko\'s Pants"}] 1
clear @s leather_boots[custom_name={"color":"dark_aqua","italic":false,"text":"Ekko\'s Shoes"}] 1

tag @s add Invincible
tag @s add EkkoChronobreakTeleporting

schedule function kits:char/ekko/chronobreak/end 40t replace
