effect give @s minecraft:speed 2 4 true
playsound minecraft:entity.lightning_bolt.thunder neutral @a[distance=..20] ~ ~ ~ 2 2 1
playsound minecraft:entity.ender_dragon.flap neutral @a[distance=..20] ~ ~ ~ 2 0 1
particle block{block_state:"minecraft:sand"} ~ ~0.25 ~ 3 0 3 1 100 force
particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force
execute positioned ~ ~1.5 ~ positioned ^ ^ ^1.5 run function kits:char/dragonborn/boom
scoreboard players set @s kits.ability1CD 0
