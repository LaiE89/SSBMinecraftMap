tag @s remove SekiroPostureBroken
execute at @p[tag=Sekiro] run summon area_effect_cloud ~ ~ ~ {Tags:["SekiroPostureBreakPosition"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:3}
damage @s 50 bypass:player_attack_no_kb by @e[type=area_effect_cloud,tag=SekiroPostureBreakPosition,limit=1,sort=nearest] from @p[tag=Sekiro]
kill @e[type=area_effect_cloud,tag=SekiroPostureBreakPosition]
effect give @p[tag=Sekiro] minecraft:instant_health 1 0 true
playsound minecraft:entity.player.attack.crit neutral @a[distance=..30] ~ ~ ~ 10 0 1
playsound minecraft:entity.player.attack.sweep neutral @a[distance=..30] ~ ~ ~ 10 0 1
playsound minecraft:sekiro.posture_break neutral @a[distance=..30] ~ ~ ~ 1 1 1
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.2 0.2 0.2 1 75 force
