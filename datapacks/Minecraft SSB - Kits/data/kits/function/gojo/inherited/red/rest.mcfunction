## Execute at Red During Rest Phase
# Movement
tp @s ~ ~ ~ ~15 ~
execute rotated as @e[limit=1,sort=nearest,tag=GojoRedInitRot,type=area_effect_cloud] run tp @s ^ ^ ^0.05

# VFX
execute rotated ~ 0 positioned ~ ~1 ~ run function kits:gojo/vfx/particles/red1
