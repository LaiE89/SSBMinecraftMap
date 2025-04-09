## When Cleave and Dismantle is Used
# If domain is active or not
execute if entity @e[tag=ItadoriShrine,type=area_effect_cloud] positioned as @e[limit=1,sort=nearest,tag=ItadoriShrine,type=area_effect_cloud] as @e[distance=..20,tag=!Itadori,tag=!InLabyrinth,tag=!Invincible,type=!#kits:non_entity] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["ItadoriMassSlices","ItadoriCleaveLocation"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:20}
execute unless entity @e[tag=ItadoriShrine,type=area_effect_cloud] run function kits:itadori/sukuna/slice/use_normal

# Updates scores
scoreboard players add @s kits.ability6CD 10
scoreboard players set @s kits.ability4CD 0
