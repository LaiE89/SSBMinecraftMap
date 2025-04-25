## Input Order 3
# Stores order 3 input into the combo dial
scoreboard players add @s kits.timer 3
scoreboard players operation @s kits.timer3 *= @s kits.timer

# Uses an ability based on the series of inputs by the user
tag @s add AbianInputsDelay
function kits:char/abian/inputs/score_trees/order3/root

# Energy cost
function kits:char/abian/repetition_cost/detect
scoreboard players remove @s kits.ability2CD 40

# Resets inputs
function kits:char/abian/inputs/reset/local/inputs
