summon area_effect_cloud ~ ~ ~ {Tags:["Dragonborn_VFX_ExpandingSphere"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:4}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=Dragonborn_VFX_ExpandingSphere] ~ ~ ~ 0 -90
function kits:char/dragonborn/expanding_sphere/play {"Inaccuracy":"150","Speed":"200","Limit":"4","R":"0","G":"70","B":"90","Size":"75"}
particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 1 75 force
particle minecraft:flash ~ ~1 ~ 0 0 0 0 1 force
playsound minecraft:block.respawn_anchor.deplete neutral @a[distance=..50] ~ ~ ~ 3 1 1
execute as @e[distance=..7,type=!#kits:non_entity,tag=!Invincible,tag=!InLabyrinth,tag=!Dragonborn] at @s run function kits:char/dragonborn/dawnbreakerdamage
