scoreboard players add @p[tag=Zed] kits.timer2 1
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.4 0.4 0.4 0 5 force
execute if score @p[tag=Zed] kits.timer2 matches 40.. run function kits:char/zed/deathmark/damage
