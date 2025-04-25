kill @e[type=area_effect_cloud,tag=2bgravityprojectile]
playsound minecraft:entity.guardian.death neutral @a[distance=..40] ~ ~ ~ 5 0.5 1
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
function kits:char/2b/gravitydraw
tag @s add 2bgravityactivated
