scoreboard players add @p[tag=Kiryu,scores={kits.timer2=..9}] kits.timer2 1
execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Kiryu,tag=!InLabyrinth] at @s run damage @s 2 bypass:player_attack by @p[tag=Kiryu]
effect give @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Kiryu,tag=!InLabyrinth] minecraft:darkness 2 0 true
kill @s
