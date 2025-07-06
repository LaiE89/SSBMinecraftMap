damage @s 12 bypass:player_attack by @p[tag=Zed]
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.5 0.5 0.5 0 100 force
playsound minecraft:entity.zombie.break_wooden_door neutral @a[distance=..15] ~ ~ ~ 10 1 1
tag @s remove ZedDeathmarked
scoreboard players reset @p[tag=Zed] kits.timer2