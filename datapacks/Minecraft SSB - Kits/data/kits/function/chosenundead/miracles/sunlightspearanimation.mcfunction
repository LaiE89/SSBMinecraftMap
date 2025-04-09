scoreboard players add @s kits.timer8 1
execute as @e[type=area_effect_cloud,tag=ChosenUndeadSpearCharge] at @s run function kits:chosenundead/miracles/sunlightspearcharge
execute at @s[scores={kits.timer8=20}] run function kits:chosenundead/miracles/sunlightspearthrow
tag @s[scores={kits.timer8=20..}] remove ChosenUndeadSunlightSpear
