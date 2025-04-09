## Execute at Slices
# Damages targeted enemy
execute as @e[distance=..2,tag=!Itadori,tag=!Invincible,tag=!InLabyrinth,type=!#kits:non_entity] at @s run function kits:itadori/sukuna/slice/hit
execute positioned as @e[distance=..2,limit=1,sort=nearest,tag=!Itadori,tag=!Invincible,tag=!InLabyrinth,type=!#kits:non_entity] run tp @s ~ ~1 ~ ~ ~

# FX
function kits:itadori/vfx/animations/slice/fps
playsound entity.player.hurt_sweet_berry_bush neutral @a[distance=..20] ~ ~ ~ 0.25 0.5 0.25
playsound item.trident.return neutral @a[distance=..20] ~ ~ ~ 0.1 2 0.1
