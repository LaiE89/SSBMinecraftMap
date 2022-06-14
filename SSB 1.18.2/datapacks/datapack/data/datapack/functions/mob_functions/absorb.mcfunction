particle minecraft:dust 0 1 1 1 ~ ~1.5 ~ 0.2 0.2 0.2 0 50
playsound minecraft:entity.enderman.teleport neutral @a[distance=..20] ~ ~ ~ 10 0 1
effect give @p[tag=Mob] minecraft:instant_health
effect give @p[tag=Mob] minecraft:strength 3 2 true
scoreboard players add @p[tag=Mob] Timer3 20
kill @s
