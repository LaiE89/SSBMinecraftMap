playsound minecraft:entity.player.big_fall neutral @a[distance=..20] ~ ~ ~ 10 0 1
particle flame ~ ~1 ~ 0 0 0 1 50 force
damage @s 9 bypass:player_attack by @p[tag=Kiryu]
effect give @s blindness 1 0 true
