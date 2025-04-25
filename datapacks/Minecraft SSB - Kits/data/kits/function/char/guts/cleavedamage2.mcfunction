damage @s 0.25 bypass:player_attack by @p[tag=Guts]
playsound minecraft:entity.zombie.break_wooden_door neutral @a[distance=..40] ~ ~ ~ 5 0 1
particle item{item:"bone"} 0 0 0.2 100 0 0 0.2 100 force
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.4 0.4 0.4 0 100 force
tag @s add GutsBleeding
