playsound minecraft:entity.illusioner.prepare_blindness neutral @a[distance=..30] ~ ~ ~ 3 2 1
tag @s add RaidenBladeMode
attribute @s minecraft:knockback_resistance base set 1
scoreboard players reset @s kits.timer
scoreboard players set @s kits.timer2 1
scoreboard players reset @s kits.timer3
scoreboard players set @s kits.ability1CD 0
