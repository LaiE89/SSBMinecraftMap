kill @e[type=area_effect_cloud,tag=EkkoConvergenceProjectile]
playsound minecraft:entity.guardian.death neutral @a[distance=..40] ~ ~ ~ 5 1 1
function kits:char/ekko/convergence/draw
particle dust{color:[1.000,1.000,1.000],scale:1} ~ ~ ~ 3 0 3 0 500 force
tag @s add EkkoConvergenceActivated
