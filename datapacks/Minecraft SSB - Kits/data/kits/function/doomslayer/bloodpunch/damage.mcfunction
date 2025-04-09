damage @s 9 bypass:player_attack by @p[tag=Doomslayer]
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0 0 0 0 100 force
playsound minecraft:entity.player.big_fall neutral @a[distance=..30] ~ ~ ~ 10 0 1
effect give @p[tag=Doomslayer] minecraft:instant_health 1 0 true