## Particles
particle minecraft:flash ~ ~ ~ 0 0 0 0 3
summon area_effect_cloud ~ ~ ~ {Tags:["Doomslayer_VFX_ExpandingSphere","Doomslayer_Ballista_Hit"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:5}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=Doomslayer_VFX_ExpandingSphere] ~ ~ ~ 0 -90
function kits:char/doomslayer/expanding_sphere/play {"Inaccuracy":"150","Speed":"50","Limit":"5","R":"99","G":"27","B":"02","Size":"50"}

## Damage
execute as @e[distance=..4,type=!#kits:non_entity,tag=!Doomslayer,tag=!Invincible,tag=!InLabyrinth] at @s run function kits:char/doomslayer/ballista/damage