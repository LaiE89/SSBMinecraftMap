## Gets and Stores User Shift Data
# Gets shift and its order
scoreboard players add @s kits.timer 2
scoreboard players add @s kits.timer2 1

# Stores shift information into the combo dial
execute if score @s kits.timer2 matches 1 run function kits:char/abian/inputs/get/order1
execute if score @s kits.timer2 matches 2 run function kits:char/abian/inputs/get/order2
execute if score @s kits.timer2 matches 3 run function kits:char/abian/inputs/get/order3

# Resets scores
schedule function kits:char/abian/inputs/reset/global/inputs 1s replace
scoreboard players reset @s kits.timer
scoreboard players set @s kits.ability1CD 0
