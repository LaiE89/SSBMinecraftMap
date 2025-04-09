## When Malevolent Shrine is Used
# Summons domain
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:100,Tags:["ItadoriShrine"]}
execute rotated ~ 0 run tp @e[limit=1,sort=nearest,tag=ItadoriShrine,type=area_effect_cloud] ^ ^ ^-2 ~ 0

# FX
effect give @e[distance=..20,tag=!InLabyrinth,type=!#kits:non_entity] darkness 2 0 true
playsound block.sculk_shrieker.shriek neutral @a[distance=..20] ~ ~ ~ 2 1 1

# Updates scores
scoreboard players add @s kits.ability6CD 60
scoreboard players remove @s kits.ability1CD 60
scoreboard players set @s kits.ability5CD 0
