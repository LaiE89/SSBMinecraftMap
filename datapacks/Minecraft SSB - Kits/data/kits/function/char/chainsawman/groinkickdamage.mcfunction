effect give @s minecraft:slowness 1 9 true
effect give @s minecraft:weakness 1 0 true
damage @s 6 bypass:player_attack by @p[tag=Denji]
playsound minecraft:entity.player.attack.crit neutral @a[distance=..10] ~ ~ ~ 3 0.5 1
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.4 0.5 0.4 0 50 force
