particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~ ~ 0.2 0.2 0.2 0 50 force
playsound minecraft:entity.enderman.teleport neutral @a[distance=..20] ~ ~ ~ 10 0 1
effect give @p[tag=Mob] minecraft:instant_health
#effect give @p[tag=Mob] minecraft:strength 3 3 true
scoreboard players add @p[tag=Mob] kits.timer3 10
kill @s
