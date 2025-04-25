# What happens to entities hit by Ice Bomb
effect give @s minecraft:slowness 2 2 true
effect give @s minecraft:weakness 2 0 true
particle block{block_state:"minecraft:ice"} ~ ~1 ~ 0.5 1 0.5 0 50 force
scoreboard players add @p[tag=Doomslayer,scores={kits.ability7CD=..99}] kits.ability7CD 10
