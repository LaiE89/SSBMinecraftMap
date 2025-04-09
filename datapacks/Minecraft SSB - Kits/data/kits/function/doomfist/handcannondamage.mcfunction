execute if entity @p[tag=Doomfist,distance=..4] as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Doomfist,tag=!InLabyrinth] at @s run damage @s 0.75 bypass:player_attack_no_kb by @p[tag=Doomfist]
execute if entity @p[tag=Doomfist,distance=..4] run particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0 0 0 0.05 2 force

execute if entity @p[tag=Doomfist,distance=4.1..] as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Doomfist,tag=!InLabyrinth] at @s run damage @s 0.35 bypass:player_attack_no_kb by @p[tag=Doomfist]

kill @s
