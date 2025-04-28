execute as @p[tag=ChosenUndeadStamp] at @s run attribute @s knockback_resistance base set 0.0
execute as @p[tag=ChosenUndeadStamp] at @s run function kits:char/chosenundead/usestamina {stamina: 50}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ChosenUndeadStampSlash"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:12}
execute as @p[tag=ChosenUndeadStamp] at @s run tp @e[type=area_effect_cloud,tag=ChosenUndeadStampSlash] @s
execute as @e[type=area_effect_cloud,tag=ChosenUndeadStampSlash] at @s run tp @s ~ ~1 ~ ~ 75

execute as @p[tag=ChosenUndeadStamp] at @s run particle minecraft:sweep_attack ^ ^1.5 ^1 0 0 0 0 1 force
execute as @p[tag=ChosenUndeadStamp] at @s run playsound minecraft:entity.player.attack.strong neutral @a[distance=..20] ~ ~ ~ 2 0 1
execute as @p[tag=ChosenUndeadStamp] at @s run playsound minecraft:entity.player.attack.knockback neutral @a[distance=..20] ~ ~ ~ 2 0 1
execute as @p[tag=ChosenUndeadStamp] at @s run playsound minecraft:item.axe.scrape neutral @a[distance=..30] ~ ~ ~ 2 1.5 1

execute as @p[tag=ChosenUndeadStamp] run attribute @s minecraft:attack_damage modifier remove damage.stamp.chosenundead
tag @e[tag=ChosenUndeadStampSlashed] remove ChosenUndeadStampSlashed
tag @p[tag=ChosenUndeadStamp] remove ChosenUndeadStamp
