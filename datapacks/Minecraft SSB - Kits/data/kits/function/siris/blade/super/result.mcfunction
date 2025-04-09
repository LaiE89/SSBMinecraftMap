# End Damage Result Based on Number of Clicks
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["SirisSuperDamage"]}
execute store result entity @e[limit=1,sort=nearest,tag=SirisSuperDamage,type=area_effect_cloud] Duration float 5 run scoreboard players get @s kits.timer
kill @s
