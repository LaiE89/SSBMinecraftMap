## Gains 1 Charge for Delaware Smash Every 25 Seconds
# Gain 1 charge
# scoreboard players add @s kits.timer3 1

# Resets charge cooldown
# scoreboard players set @s kits.ability2CD 0

scoreboard players add @s[scores={kits.timer3=..4}] kits.timer3 1
scoreboard players set @s[scores={kits.timer3=6..}] kits.timer3 5
particle composter ~ ~1 ~ 0.3 0.5 0.3 0 50 force
# playsound minecraft:entity.player.levelup neutral @a[distance=..10] ~ ~ ~ 0.5 1.75 0.5
