## When Labyrinth Shop is Used
# Summons shrine
summon area_effect_cloud ~ ~ ~ {Duration:60,Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["AbianLabyrinthShop"]}
tp @e[limit=1,sort=nearest,tag=AbianLabyrinthShop,type=area_effect_cloud] ~ ~ ~ ~ 0

# FX
effect give @e[distance=..20,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] darkness 3 0 true
playsound block.sculk_shrieker.shriek neutral @a[distance=..20] ~ ~ ~ 2 1 1

# Displays inputs in actionbar
title @s actionbar [{"text":"Energy: ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/300 || ","color":"white"},{"text":"Combo Meter: ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/100 || ","color":"white"},{"text":"Inputs: ","color":"blue"},{"text":"S-R-R","color":"white"}]

# Removes input restrictions (delayed)
schedule function kits:char/abian/inputs/reset/global/delay 3s replace
