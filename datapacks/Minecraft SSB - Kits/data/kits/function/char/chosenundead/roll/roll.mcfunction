scoreboard players reset @s kits.timer9
kill @e[type=area_effect_cloud,tag=DarkSoulsRoll]
execute if entity @s[tag=ChosenUndeadStamp] run effect clear @s slowness
effect give @s minecraft:resistance 1 9 true
effect give @s minecraft:mining_fatigue 1 9 true
attribute @s minecraft:attack_damage modifier remove damage.stamp.chosenundead
attribute @s minecraft:attack_damage modifier add damage.roll.chosenundead -20 add_value
attribute @s knockback_resistance base set 1.0
tag @s remove ChosenUndeadStamp
schedule clear kits:char/chosenundead/stamp/stampstart
tag @s add Invincible
execute as @s at @s run tp @s ~ ~ ~ ~ 90
function kits:char/chosenundead/usestamina {stamina: 20}
particle block{block_state:"minecraft:gravel"} ~ ~0.25 ~ 0.5 0 0.5 0 40 force

execute at @s run function kits:char/chosenundead/roll/rolldirection
