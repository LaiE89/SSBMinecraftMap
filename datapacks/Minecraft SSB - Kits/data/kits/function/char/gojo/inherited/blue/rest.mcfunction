## Execute at blue during rest phase
tp @s ~ ~ ~ ~15 ~
execute rotated as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=GojoBlueInitRot] run tp @s ^ ^ ^0.05
execute rotated ~ 0 positioned ~ ~1 ~ run function kits:char/gojo/vfx/particles/blue1