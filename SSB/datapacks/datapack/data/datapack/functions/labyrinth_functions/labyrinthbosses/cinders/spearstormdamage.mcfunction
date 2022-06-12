playsound minecraft:entity.firework_rocket.blast neutral @a[distance=..20] ~ ~ ~ 2 0 1
particle minecraft:flash ~ ~-2 ~ 0 0 0 0 10
effect give @a[distance=..3] minecraft:instant_damage
effect give @a[distance=..3] minecraft:wither 1 9 true
kill @s