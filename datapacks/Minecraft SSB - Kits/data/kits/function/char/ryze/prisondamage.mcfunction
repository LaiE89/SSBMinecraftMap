effect give @s minecraft:slowness 2 3 true
damage @s 6 bypass:player_attack_no_kb by @p[tag=Ryze]
particle enchant ~ ~ ~ 0.4 1.5 0.4 0.0001 200 force
particle nautilus ~ ~ ~ 0.4 1.5 0.4 0.0001 300 force
playsound minecraft:entity.illusioner.mirror_move neutral @a[distance=..15]
tag @s[tag=RyzeFlux] add RyzeInPrison
execute at @s[tag=RyzeInPrison] run summon area_effect_cloud ~ ~-1.5 ~ {Tags:["RyzePrison"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:50}
execute at @s[tag=RyzeInPrison] run tp @e[type=area_effect_cloud,tag=RyzePrison] ~ ~-1.5 ~
execute at @s[tag=RyzeInPrison] run playsound minecraft:entity.wither.spawn neutral @a[distance=..15] ~ ~ ~ 2 1.5 1
tag @s[tag=RyzeInPrison] remove RyzeFlux
