## When Black Hole is Used
# Summons black hole
kill @e[type=area_effect_cloud,tag=AbianBlackHole]
summon area_effect_cloud ~ ~ ~ {Duration:40,Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["AbianBlackHole","projectile"]}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=AbianBlackHole] @s
tag @e[type=!#kits:non_entity,tag=AbianBlackHoleHit] remove AbianBlackHoleHit

# FX
particle explosion ^ ^1 ^1 0 0 0 0 1 force
playsound entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 0.2 0 0.2
playsound entity.illusioner.mirror_move neutral @a[distance=..20] ~ ~ ~ 0.4 0 0.4

# Displays inputs in actionbar
title @s actionbar [{"text":"Energy: ","color":"aqua"},{"score":{"name":"@s","objective":"kits.ability2CD"},"color":"white"},{"text":"/300 || ","color":"white"},{"text":"Combo Meter: ","color":"gold"},{"score":{"name":"@s","objective":"kits.ability3CD"},"color":"white"},{"text":"/100 || ","color":"white"},{"text":"Inputs: ","color":"blue"},{"text":"S-S-R","color":"white"}]

# Removes input restrictions
tag @s remove AbianInputsDelay
