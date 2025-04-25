#execute as @s at @s facing entity @e[tag=ChosenUndeadLockedOn,tag=!ChosenUndead,limit=1,sort=nearest] eyes run tp @s ~ ~ ~ ~ 0
#execute as @s at @s unless entity @e[tag=ChosenUndeadLockedOn,tag=!ChosenUndead] run tp @s ~ ~ ~ ~ 0
effect clear @s minecraft:resistance
effect clear @s minecraft:mining_fatigue
attribute @s minecraft:attack_damage modifier remove damage.roll.chosenundead
attribute @s knockback_resistance base set 0.0
tag @s remove Invincible
scoreboard players reset @s kits.timer9
execute at @s run playsound entity.player.small_fall neutral @a[distance=..20] ~ ~ ~ 1 1.2 1
kill @e[type=area_effect_cloud,tag=DarkSoulsRoll]
