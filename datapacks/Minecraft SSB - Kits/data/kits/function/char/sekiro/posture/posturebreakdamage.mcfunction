tag @s remove SekiroPostureBroken
damage @s[tag=!Sekiro] 30 bypass:player_attack_no_kb by @p[tag=Sekiro]
playsound minecraft:entity.player.attack.crit neutral @a[distance=..30] ~ ~ ~ 5 1 1
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.2 0.2 0.2 1 75 force
