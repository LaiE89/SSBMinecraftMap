particle minecraft:dust 1 1 1 1 ^ ^1 ^2 1.5 0 1.5 0 200
execute positioned ^ ^1 ^2 run effect give @a[distance=..4] instant_damage 1 1 true
execute positioned ^ ^1 ^2 run effect give @a[distance=..4] slowness 3 4 true
playsound minecraft:entity.player.attack.sweep neutral @a[distance=..10] ~ ~ ~ 10 0 1