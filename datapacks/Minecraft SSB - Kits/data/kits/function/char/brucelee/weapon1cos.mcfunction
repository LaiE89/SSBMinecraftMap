summon area_effect_cloud ^ ^ ^1 {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:15,Tags:["WATA","projectile"]}
tp @e[type=area_effect_cloud,tag=WATA] @s
scoreboard players reset @s kits.timer2
scoreboard players set @s kits.ability1CD 0
