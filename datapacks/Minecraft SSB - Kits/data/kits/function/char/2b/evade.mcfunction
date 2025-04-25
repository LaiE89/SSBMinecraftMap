scoreboard players add @s kits.timer 1
attribute @s minecraft:knockback_resistance base set 1
execute if entity @s[nbt={HurtTime:9s}] run function kits:char/2b/evadesuccess
attribute @s[scores={kits.timer=10..}] minecraft:knockback_resistance base set 0
effect clear @s[scores={kits.timer=10..}] resistance
tag @s[scores={kits.timer=10..}] remove 2BEvasion
