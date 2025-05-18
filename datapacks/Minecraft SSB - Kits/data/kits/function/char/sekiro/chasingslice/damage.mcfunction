execute at @p[tag=Sekiro] run summon area_effect_cloud ~ ~ ~ {Tags:["SekiroChasingSlicePosition"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:3}
damage @s 6 bypass:player_attack by @e[type=area_effect_cloud,tag=SekiroChasingSlicePosition,limit=1,sort=nearest] from @p[tag=Sekiro]
kill @e[type=area_effect_cloud,tag=SekiroChasingSlicePosition]
function kits:char/sekiro/posture/posturegain {Posture:15}
effect give @s[type=!minecraft:player] minecraft:weakness 1 1 true
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.3 0.3 0.3 0 20 force
playsound minecraft:entity.player.attack.strong neutral @a[distance=..30] ~ ~ ~ 2 1 1