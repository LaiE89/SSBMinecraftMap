tag @s add GutsDragonslayerSmashed
damage @s 9 bypass:player_attack by @p[tag=Guts]
playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..30] ~ ~ ~ 2 0 1
playsound minecraft:entity.player.attack.crit neutral @a[distance=..30] ~ ~ ~ 2 0 1

particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.1 0.1 0.1 0.5 50 force
particle minecraft:gust ~ ~1 ~ 0 0 0 0 1 force

