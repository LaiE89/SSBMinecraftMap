execute at @e[type=area_effect_cloud,tag=GarchompStoneEdgeLocation] run particle item{item:"granite"} ~ ~0.5 ~ 0.5 0.5 0.5 0.5 50 force
execute at @e[type=area_effect_cloud,tag=GarchompStoneEdgeLocation] run playsound minecraft:block.ancient_debris.break neutral @a[distance=..20] ~ ~ ~ 10 0 1
kill @e[type=area_effect_cloud,tag=GarchompStoneEdgeLocation]
kill @e[type=block_display,tag=GarchompStoneEdge]
