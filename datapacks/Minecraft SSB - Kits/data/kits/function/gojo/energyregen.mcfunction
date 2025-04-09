# Cursed Energy Regen
scoreboard players add @s kits.ability1CD 1
scoreboard players add @s kits.timer2 1
scoreboard players reset @s kits.ability2CD
execute if score @s kits.timer2 matches 50.. run function kits:gojo/infinity/add
execute if entity @e[distance=..7,tag=!Gojo,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] run scoreboard players set @s kits.ability2CD 4
