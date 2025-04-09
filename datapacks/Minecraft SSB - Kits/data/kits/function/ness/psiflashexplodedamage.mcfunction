damage @s 6 bypass:player_attack by @p[tag=Ness]
execute store result score @p[tag=Ness] kits.timer5 run random value 1..15

execute if score @p[tag=Ness] kits.timer5 matches 11..15 run tellraw @p[tag=Ness] {"text":"The target started to feel strange","bold":true}
execute if score @p[tag=Ness] kits.timer5 matches 11..15 run effect give @s minecraft:blindness 3 0 true
execute if score @p[tag=Ness] kits.timer5 matches 11..15 run effect give @s minecraft:nausea 3 0 true

execute if score @p[tag=Ness] kits.timer5 matches 1..10 run tellraw @p[tag=Ness] {"text":"The target started to cry uncontrollably","bold":true}
execute if score @p[tag=Ness] kits.timer5 matches 1..10 run tag @s add NessCrying
