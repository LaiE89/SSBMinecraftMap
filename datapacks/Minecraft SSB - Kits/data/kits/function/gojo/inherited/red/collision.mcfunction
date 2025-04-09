## Red Upon Collision
# Damage
summon area_effect_cloud ^ ^ ^-2 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["GojoRedKbMarker"]}
execute as @e[distance=..5,tag=!Gojo,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] at @s run function kits:gojo/inherited/red/hit

# FX
execute positioned ~ ~1 ~ run function kits:gojo/vfx/particles/redflash
particle flash ~ ~1 ~ 0 0 0 0 2 force
playsound entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 1.5 0 1

# Despawn
kill @s
