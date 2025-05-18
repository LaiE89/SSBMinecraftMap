execute at @p[tag=ChosenUndead] run summon area_effect_cloud ~ ~ ~ {Tags:["ChosenUndeadWrathOfTheGodsPosition"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:3}
damage @s 12 bypass:player_attack by @e[type=area_effect_cloud,tag=ChosenUndeadWrathOfTheGodsPosition,limit=1,sort=nearest] from @p[tag=ChosenUndead]
effect give @s minecraft:slowness 2 1 true
kill @e[type=area_effect_cloud,tag=ChosenUndeadWrathOfTheGodsPosition]
scoreboard players set @s kits.raycastTick 0
execute at @s facing entity @p[tag=ChosenUndead] feet positioned ~ ~1.5 ~ run function kits:char/chosenundead/miracles/wrathofthegodskb
