damage @s 9 bypass:player_attack by @p[tag=Sekiro]
function kits:char/sekiro/posture/posturegain {Posture:20}
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.3 0.5 0.3 0 50 force
playsound minecraft:entity.player.attack.crit neutral @a[distance=..30] ~ ~ ~ 3 1 1
