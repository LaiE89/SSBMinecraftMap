## Input Order 1
# Stores order 1 input into the combo dial
scoreboard players add @s kits.timer 1
scoreboard players operation @s kits.timer3 = @s kits.timer

# Actionbar data
execute if score @s kits.timer3 matches 2 run scoreboard players set @s kits.timer4 2
execute if score @s kits.timer3 matches 3 run scoreboard players set @s kits.timer4 3
