## Execute at Mass Slices
# Damages targeted enemy
execute as @e[distance=..5,tag=!Itadori,tag=!InLabyrinth,tag=!Invincible,type=!#kits:non_entity] at @s run function kits:itadori/sukuna/slice/hit
execute positioned as @e[distance=..5,limit=1,sort=nearest,tag=!Itadori,tag=!InLabyrinth,tag=!Invincible,type=!#kits:non_entity] run tp @s ~ ~1 ~ ~ ~

# FX
function kits:itadori/vfx/animations/domain/fps
playsound entity.player.hurt_sweet_berry_bush neutral @a[distance=..20] ~ ~ ~ 1 0 1
playsound item.trident.return neutral @a[distance=..20] ~ ~ ~ 0.5 1 0.5
