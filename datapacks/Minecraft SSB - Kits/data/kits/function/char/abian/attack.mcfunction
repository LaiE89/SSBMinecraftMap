## Every Time User Attacks
# Combo meter
function kits:char/abian/combo_meter/charge/normal
execute if entity @e[type=!#kits:non_entity,scores={kits.specific.abianMarked=1..},nbt={HurtTime:10s},distance=..5,tag=!Abian,tag=!InLabyrinth,tag=!Invincible] run function kits:char/abian/combo_meter/charge/normal

# Uses aerial slash if mid-air
execute if data entity @s {OnGround:0b} run function kits:char/abian/moves/aerial_slash/use
