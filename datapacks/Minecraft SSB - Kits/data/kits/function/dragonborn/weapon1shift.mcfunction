scoreboard players add @s kits.timer 1
scoreboard players set @s[scores={kits.timer=3..}] kits.timer 0
playsound minecraft:ui.loom.select_pattern neutral @a[distance=..20] ~ ~ ~ 2 0.75 1
scoreboard players set @s kits.ability2CD 0
