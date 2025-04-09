scoreboard players reset @s kits.specific.ryzeFluxTick
particle enchanted_hit ~ ~1 ~ 0 0 0 1 100 force
particle flash ~ ~1 ~ 0 0 0 0 0 force
playsound minecraft:entity.dragon_fireball.explode neutral @a[distance=..15] ~ ~ ~ 2 1.5 1
damage @s 12 bypass:player_attack by @p[tag=Ryze]
tag @s remove RyzeFlux
