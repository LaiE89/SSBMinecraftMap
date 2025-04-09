kill @e[type=area_effect_cloud,tag=ekkoconvergenceprojectile]
playsound minecraft:entity.guardian.death neutral @a[distance=..40] ~ ~ ~ 5 1 1
function kits:ekko/convergencedraw
particle dust{color:[1.000,1.000,1.000],scale:1} ~ ~ ~ 3 0 3 0 500 force
tag @s add convergenceactivated
