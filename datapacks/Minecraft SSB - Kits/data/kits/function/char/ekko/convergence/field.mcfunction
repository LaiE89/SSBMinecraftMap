execute store result score @s kits.timer run data get entity @s Age
execute store result score @s kits.timer2 run scoreboard players operation @s kits.timer %= @p[tag=Ekko] kits.timer5
execute if score @s kits.timer2 matches 0 run function kits:char/ekko/convergence/draw

effect give @e[distance=..7,type=!#kits:non_entity,tag=!Invincible,tag=!Ekko,tag=!InLabyrinth] minecraft:slowness 1 1 true
execute as @p[tag=Ekko,distance=..7] at @s run function kits:char/ekko/convergence/freeze
