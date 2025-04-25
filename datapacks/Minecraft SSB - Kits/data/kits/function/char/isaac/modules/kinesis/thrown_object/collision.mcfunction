## If Thrown Object Collides With Enemy
# Execute at enemy hit by thrown object
execute if entity @s[tag=!IsaacObjectBone,tag=!IsaacObjectExplosive] as @e[distance=..2,limit=1,sort=nearest,tag=!Isaac,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] at @s run function kits:char/isaac/modules/kinesis/thrown_object/hit
execute if entity @s[tag=IsaacObjectBone] as @e[distance=..2,limit=1,sort=nearest,tag=!Isaac,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] at @s run function kits:char/isaac/modules/kinesis/thrown_object/lethal_hit
execute if entity @s[tag=IsaacObjectExplosive] run function kits:char/isaac/plasma_cutter/explosive_canister/collision

# Kills thrown object
kill @s
