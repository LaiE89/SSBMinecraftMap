## Red upon collision
# damage
execute if score @s kits.timer matches ..20 rotated as @p[tag=Gojo] run tp @s ~ ~ ~ ~ ~
execute at @s run summon area_effect_cloud ^ ^ ^-5 {Particle:{type:"block",block_state:"minecraft:air"},Age:20,Tags:["GojoRedKbMarker"],Duration:0}
execute as @e[type=!#kits:non_entity,distance=..5,tag=!Gojo,tag=!InLabyrinth,tag=!Invincible] at @s run function kits:char/gojo/inherited/red/hit

# fx
particle flash ~ ~1 ~ 0 0 0 0 2
execute positioned ~ ~1 ~ run function kits:char/gojo/vfx/particles/redflash
playsound entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 1.5 0 1

# kill red
kill @s