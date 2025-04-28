## Execute at Mass Slices
# Damages targeted enemy
execute as @e[distance=..5,type=!#kits:non_entity,tag=!Itadori,tag=!InLabyrinth,tag=!Invincible,limit=1,sort=nearest] at @s run function kits:char/itadori/sukuna/slice/hit
execute positioned as @e[distance=..5,type=!#kits:non_entity,limit=1,sort=nearest,tag=!Itadori,tag=!InLabyrinth,tag=!Invincible] run tp @s ~ ~1 ~ ~ ~

# FX
function kits:char/itadori/vfx/animations/domain/fps
playsound entity.player.hurt_sweet_berry_bush neutral @a[distance=..20] ~ ~ ~ 1 0 1
playsound item.trident.return neutral @a[distance=..20] ~ ~ ~ 0.5 1 0.5
