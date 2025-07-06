damage @s 6 bypass:player_attack by @p[tag=Jax]
particle dust{color:[1.000,0.700,0.000],scale:1} ~ ~1 ~ 0.4 0.8 0.4 0 100 force
execute at @p[tag=Jax] run particle sweep_attack ^ ^1 ^1.5 0 0 0 0 1 force
playsound minecraft:entity.player.attack.knockback neutral @a[distance=..10] ~ ~ ~ 10 0 1
scoreboard players reset @p[tag=Jax] kits.timer2
scoreboard players set @p[tag=Jax] kits.ability1CD 0
tag @p[tag=Jax] remove JaxEmpowered
