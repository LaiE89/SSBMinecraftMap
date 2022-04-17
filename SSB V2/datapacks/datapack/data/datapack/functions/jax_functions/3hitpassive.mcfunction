function datapack:damage1
particle minecraft:dust 1 1 0 1 ~ ~0.5 ~ 0.5 0 0.5 1 500
execute at @p[tag=Jax,scores={Timer3=3..}] run particle minecraft:sweep_attack ^ ^1 ^1.5
execute at @p[tag=Jax,scores={Timer3=3..}] run playsound minecraft:entity.player.attack.crit neutral @a[distance=..10] ~ ~ ~ 2 0.8 1