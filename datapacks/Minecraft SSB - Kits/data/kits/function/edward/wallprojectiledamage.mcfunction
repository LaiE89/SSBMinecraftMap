damage @s 6 bypass:player_attack by @e[type=minecraft:armor_stand,tag=EdwardWallProjectile,limit=1,sort=nearest] from @p[tag=Edward]
playsound minecraft:entity.player.big_fall neutral @a[distance=..30] ~ ~ ~ 10 0 1
playsound minecraft:entity.lightning_bolt.impact neutral @a[distance=..30] ~ ~ ~ 2 2 1
particle explosion ~ ~1 ~ 0 0 0 0 1 force
kill @e[type=armor_stand,tag=EdwardWallProjectile,sort=nearest,limit=1]
