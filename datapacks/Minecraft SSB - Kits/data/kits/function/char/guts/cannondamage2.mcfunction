particle item{item:"redstone_block"} 0 0 0.5 100 0 0 0.5 100 force
particle flame ~ ~1 ~ 0.4 0.4 0.4 0 50 force
particle large_smoke ~ ~1 ~ 0.4 0.4 0.4 0.01 50 force
playsound minecraft:entity.player.attack.crit neutral @a[distance=..30] ~ ~ ~ 10 0 1
damage @s 12 bypass:player_attack by @p[tag=Guts]
