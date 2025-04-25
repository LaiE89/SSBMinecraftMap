execute store result score @s kits.timer6 run random value 1..100
scoreboard players remove @s kits.timer9 1

execute if score @s kits.timer6 matches 1..20 rotated ~5 ~-3 run function kits:char/laieth/lightning/joint
execute if score @s kits.timer6 matches 21..40 rotated ~-5 ~-2 run function kits:char/laieth/lightning/joint
execute if score @s kits.timer6 matches 41..60 rotated ~ ~5 run function kits:char/laieth/lightning/joint
execute if score @s kits.timer6 matches 61..80 rotated ~-5 ~3 run function kits:char/laieth/lightning/joint
execute if score @s kits.timer6 matches 81..100 rotated ~4 ~-2 run function kits:char/laieth/lightning/joint
