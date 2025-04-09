damage @s 18 minecraft:player_attack by @p[tag=Brucelee]
effect give @s minecraft:levitation 1 5 true
particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1 force
#playsound minecraft:entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 2 1 1
playsound minecraft:entity.player.attack.crit neutral @a[distance=..50] ~ ~ ~ 2 1 1
