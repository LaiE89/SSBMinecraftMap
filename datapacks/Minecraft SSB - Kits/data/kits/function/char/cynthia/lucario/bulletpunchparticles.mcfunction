damage @s 2 bypass:player_attack by @p[tag=Cynthia]
effect give @p[tag=Cynthia] minecraft:speed 1 2 true
tag @s add LucarioBulletPunched
tag @s add LucarioBulletPunched2
particle electric_spark ~ ~1 ~ 0 0 0 1 100 force
playsound minecraft:block.anvil.land neutral @a[distance=..20] ~ ~ ~ 1 1.75 1
schedule function kits:char/cynthia/lucario/bulletpunchparticles2 3t append
schedule function kits:char/cynthia/lucario/bulletpunchparticles3 6t append
