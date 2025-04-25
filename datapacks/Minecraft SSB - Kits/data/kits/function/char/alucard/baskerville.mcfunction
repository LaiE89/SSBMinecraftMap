scoreboard players add @s kits.timer 1
execute if entity @s[scores={kits.timer=30..}] as @e[distance=..2.5,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!AlucardBaskerville,tag=!InLabyrinth,tag=!Alucard] at @s run function kits:char/alucard/baskervillebite
scoreboard players reset @s[scores={kits.timer=30..}] kits.timer

scoreboard players add @s kits.timer2 1
execute if entity @s[scores={kits.timer2=150..}] run particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.5 0.8 0.5 0 200 force
execute if entity @s[scores={kits.timer2=150..}] run kill @e[type=wandering_trader,tag=AlucardBaskerville,limit=1,sort=nearest]
kill @s[scores={kits.timer2=150..}]