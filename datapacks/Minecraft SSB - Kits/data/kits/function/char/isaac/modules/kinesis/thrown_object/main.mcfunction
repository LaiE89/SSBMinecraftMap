## Execute at Thrown Objects
# kits.timer
scoreboard players add @s kits.timer2 1

# When the object collides with an enemy
execute if score @s kits.timer2 matches ..2 positioned ^ ^ ^-4 if entity @e[distance=..2,limit=1,sort=nearest,tag=!Isaac,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] run function kits:char/isaac/modules/kinesis/thrown_object/collision
execute if score @s kits.timer2 matches 1.. if entity @e[distance=..2,limit=1,sort=nearest,tag=!Isaac,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] run function kits:char/isaac/modules/kinesis/thrown_object/collision

# Stops enemy collision effects after being thrown for 2 seconds
execute if score @s kits.timer2 matches 20.. run function kits:char/isaac/modules/kinesis/thrown_object/reset
