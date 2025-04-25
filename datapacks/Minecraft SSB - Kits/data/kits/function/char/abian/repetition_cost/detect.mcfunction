## User Consumes More Energy if Moves Are Repeated
# Gets order of move used
scoreboard players add @s kits.timer5 1

# Consumes more energy if move used is the same as the previous two moves used
execute if score @s kits.timer8 = @s kits.timer3 run tag @s add AbianRepeatedMove
execute if score @s kits.timer9 = @s kits.timer3 run tag @s add AbianRepeatedMove
execute if entity @s[tag=AbianRepeatedMove] run function kits:char/abian/repetition_cost/loss

# Stores move data into its order
execute if score @s kits.timer5 matches 1 run scoreboard players operation @s kits.timer8 = @s kits.timer3
execute if score @s kits.timer5 matches 2 run function kits:char/abian/repetition_cost/cycle
