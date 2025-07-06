damage @s 6 bypass:player_attack by @p[tag=Jax]
particle dust{color:[1.000,1.000,0.000],scale:1} ~ ~0.25 ~ 0.5 0 0.5 1 100 force
execute at @p[tag=Jax,scores={kits.timer3=3..}] run particle sweep_attack ^ ^1 ^1.5 0 0 0 0 1 force
execute at @p[tag=Jax,scores={kits.timer3=3..}] run playsound minecraft:entity.player.attack.crit neutral @a[distance=..10] ~ ~ ~ 2 0.8 1
