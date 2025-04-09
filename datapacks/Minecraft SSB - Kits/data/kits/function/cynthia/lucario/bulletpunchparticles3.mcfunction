execute as @e[tag=LucarioBulletPunched2] at @s run damage @s 2 bypass:player_attack by @p[tag=Cynthia]
execute as @e[tag=LucarioBulletPunched2] at @s run particle electric_spark ~ ~1 ~ 0 0 0 1 100 force
execute as @e[tag=LucarioBulletPunched2] at @s run playsound minecraft:block.anvil.land neutral @a[distance=..20] ~ ~ ~ 1 1.25 1
tag @e[tag=LucarioBulletPunched2] remove LucarioBulletPunched2
