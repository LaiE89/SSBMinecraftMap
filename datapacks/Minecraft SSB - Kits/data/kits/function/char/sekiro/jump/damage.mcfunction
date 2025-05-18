function kits:char/sekiro/posture/posturegain {Posture:20}
execute at @p[tag=Sekiro] run summon area_effect_cloud ~ ~ ~ {Tags:["SekiroJumpPosition"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:3}
damage @s 4 bypass:player_attack by @e[type=area_effect_cloud,tag=SekiroJumpPosition,limit=1,sort=nearest] from @p[tag=Sekiro]
kill @e[type=area_effect_cloud,tag=SekiroJumpPosition]
effect give @s minecraft:slowness 1 3 true
effect give @s[type=!minecraft:player] minecraft:weakness 1 2 true
particle minecraft:crit ~ ~1 ~ 0.3 0.3 0.3 0.1 10
