summon area_effect_cloud ~ ~ ~ {Tags:["Doomslayer_VFX_ExpandingSphere","Doomslayer_BFG_Hit"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:5}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=Doomslayer_VFX_ExpandingSphere] ~ ~ ~ 0 -90
function kits:doomslayer/expanding_sphere/play {"Inaccuracy":"150","Speed":"200","Limit":"5","R":"0","G":"200","B":"0","Size":"200"}
particle flash ~ ~1 ~ 0 0 0 0 5 force
playsound minecraft:entity.generic.explode neutral @a[distance=..50] ~ ~ ~ 2 0 1
execute as @e[distance=..8,type=!#kits:non_entity,tag=!Invincible,tag=!Doomslayer,tag=!InLabyrinth] at @s run damage @s 6 bypass:player_attack by @e[type=armor_stand,tag=bfg,limit=1,sort=nearest] from @p[tag=Doomslayer]
kill @s
