execute as @p[tag=Sans] run function kits:sans/dodgeregain
damage @s 6 bypass:player_attack by @p[tag=Sans]
effect give @s minecraft:poison 2 9 true
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.3 0.3 0.3 0 50 force
playsound minecraft:entity.player.hurt_sweet_berry_bush neutral @a[distance=..15] ~ ~ ~ 10 0.5 1
