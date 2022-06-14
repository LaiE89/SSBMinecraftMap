particle minecraft:firework ~ ~1 ~ 0 0 0 0.2 10
playsound minecraft:entity.item.break neutral @a[distance=..20] ~ ~ ~ 10 0.9 1
effect give @s absorption 1 4 true
effect give @s mining_fatigue 1 9 true
tag @s add KiryuCountering
scoreboard players set @s Ability1CD 0