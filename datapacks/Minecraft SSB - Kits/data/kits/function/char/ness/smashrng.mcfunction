execute store result score @s kits.timer4 run random value 1..10
execute if score @s kits.timer4 matches 1..3 run scoreboard players set @s kits.raycastTick 0
execute if score @s kits.timer4 matches 1..3 run function kits:char/ness/smash
