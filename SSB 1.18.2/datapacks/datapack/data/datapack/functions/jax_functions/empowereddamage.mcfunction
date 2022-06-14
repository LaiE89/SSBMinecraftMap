function datapack:damage1
particle minecraft:dust 1 2 0 1 ~ ~ ~ 0.4 1 0.4 0 300
execute at @p[tag=Jax] run particle minecraft:sweep_attack ^ ^1 ^1.5
playsound minecraft:entity.player.attack.knockback neutral @a[distance=..10] ~ ~ ~ 10 0 1
scoreboard players reset @p[tag=Jax] Timer2
scoreboard players set @p[tag=Jax] Ability1CD 0
tag @p[tag=Jax] remove JaxEmpowered