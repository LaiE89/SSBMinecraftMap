tag @s remove SekiroPostureBroken
damage @s[tag=!Sekiro] 30 bypass:player_attack_no_kb by @p[tag=Sekiro]
playsound minecraft:entity.player.attack.crit neutral @a[distance=..30] ~ ~ ~ 10 0 1
playsound minecraft:entity.player.attack.sweep neutral @a[distance=..30] ~ ~ ~ 10 0 1
playsound minecraft:sekiro.posture_break neutral @a[distance=..30] ~ ~ ~ 1 1 1
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.2 0.2 0.2 1 75 force
