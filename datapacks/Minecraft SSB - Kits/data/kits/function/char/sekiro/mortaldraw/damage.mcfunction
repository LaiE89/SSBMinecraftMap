execute at @p[tag=Sekiro] run summon area_effect_cloud ~ ~ ~ {Tags:["SekiroMortalDrawPosition"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:3}
damage @s 10 bypass:player_attack by @e[type=area_effect_cloud,tag=SekiroMortalDrawPosition,limit=1,sort=nearest] from @p[tag=Sekiro]
kill @e[type=area_effect_cloud,tag=SekiroMortalDrawPosition]
function kits:char/sekiro/posture/posturegain {Posture:25}
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.3 0.5 0.3 0 50 force
playsound minecraft:entity.player.attack.crit neutral @a[distance=..30] ~ ~ ~ 3 1 1
