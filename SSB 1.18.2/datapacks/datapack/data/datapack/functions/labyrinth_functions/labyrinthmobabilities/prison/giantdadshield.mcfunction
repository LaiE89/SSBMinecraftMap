execute rotated ~ 0 run particle minecraft:sweep_attack ^ ^ ^2
execute rotated ~ 0 run particle minecraft:sweep_attack ^ ^1 ^2
execute rotated ~ 0 run particle minecraft:sweep_attack ^ ^2 ^2
execute as @s[nbt={HurtTime:10s}] run playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..10] ~ ~ ~ 2 0.75 1