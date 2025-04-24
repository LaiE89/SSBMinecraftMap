damage @s 6 bypass:player_attack by @p[tag=Sekiro]
effect give @s[type=!minecraft:player] minecraft:weakness 1 1 true
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.3 0.3 0.3 0 20 force
playsound minecraft:entity.player.attack.strong neutral @a[distance=..30] ~ ~ ~ 2 1 1