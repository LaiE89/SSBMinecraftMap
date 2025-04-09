effect give @s wither 1 9 true
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.4 0.4 0.4 0 10 force
scoreboard players add @p[tag=Guts] kits.timer2 1
execute if entity @p[tag=Guts,scores={kits.timer2=50..}] run tag @s remove GutsBleeding
