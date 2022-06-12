particle minecraft:flash ~ ~0.5 ~ 0 0 0 0 10
effect give @a[distance=..3] instant_damage
effect give @a[distance=..3] slowness 1 9 true
playsound minecraft:entity.lightning_bolt.impact neutral @a[distance=..30] ~ ~ ~ 2 0 1
playsound minecraft:entity.lightning_bolt.thunder neutral @a[distance=..30] ~ ~ ~ 2 1 1
kill @s