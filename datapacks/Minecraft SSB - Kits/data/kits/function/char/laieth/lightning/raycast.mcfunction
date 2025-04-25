particle electric_spark ~ ~ ~ 0 0 0 0 1 force @a
particle dust{color:[1.000,1.000,0.000],scale:1} ~ ~ ~ ~ ~ ~ 0 0 force
#execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Laieth,tag=!InLabyrinth] at @s run function kits:char/damage1
execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Laieth,tag=!InLabyrinth] at @s run scoreboard players set @s kits.specific.laiethStun 30
scoreboard players remove @s kits.timer8 1
execute if score @s kits.timer8 matches 1 if score @s kits.timer9 matches 1.. positioned ^ ^ ^0.25 run function kits:char/laieth/lightning/changedir
execute if score @s kits.timer8 matches 1.. positioned ^ ^ ^0.25 if block ~ ~ ~ #kits:passable run function kits:char/laieth/lightning/raycast
