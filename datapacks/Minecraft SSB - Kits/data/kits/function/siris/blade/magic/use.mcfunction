## When Magic is Used
# Initiate rotation tracking
execute store result score @s kits.x run data get entity @s Rotation[0] 1
execute store result score @s kits.y run data get entity @s Rotation[1] 1
scoreboard players set @s kits.timer 18

# FX
effect give @s slowness 1 9 true
playsound block.beacon.ambient neutral @a[distance=..20] ~ ~ ~ 0.5 2 0.5

# Resets cooldowns
scoreboard players reset %SirisMagicChanges
scoreboard players reset %SirisMagicData
scoreboard players set @s kits.ability2CD 0
