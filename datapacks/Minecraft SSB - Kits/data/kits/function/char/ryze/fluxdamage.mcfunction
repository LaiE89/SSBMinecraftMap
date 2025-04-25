scoreboard players reset @s kits.specific.ryzeFluxTick
damage @s 8 bypass:player_attack by @p[tag=Ryze]
execute if entity @e[tag=RyzeFlux,distance=..10,nbt=!{HurtTime:10s}] unless entity @e[type=area_effect_cloud,tag=overloadspread] run summon area_effect_cloud ~ ~ ~ {Tags:["overloadspread"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:40} 
particle enchanted_hit ~ ~1 ~ 0 0 0 1 100 force
particle flash ~ ~1 ~ 0 0 0 0 1 force
playsound minecraft:entity.dragon_fireball.explode neutral @a[distance=..15] ~ ~ ~ 2 1.5 1
tag @s remove RyzeFlux
