execute store result score @s kits.timer5 run random value 1..10
execute if score @s kits.timer3 matches 4 run execute if score @s kits.timer5 matches 1 run function kits:char/midoriya/one_for_all/delaware_smash/gain_charge
execute if score @s kits.timer3 matches 3 run execute if score @s kits.timer5 matches 1..3 run function kits:char/midoriya/one_for_all/delaware_smash/gain_charge
execute if score @s kits.timer3 matches 2 run execute if score @s kits.timer5 matches 1..5 run function kits:char/midoriya/one_for_all/delaware_smash/gain_charge
execute if score @s kits.timer3 matches 1 run execute if score @s kits.timer5 matches 1..7 run function kits:char/midoriya/one_for_all/delaware_smash/gain_charge
execute if score @s kits.timer3 matches 0 run execute if score @s kits.timer5 matches 1..9 run function kits:char/midoriya/one_for_all/delaware_smash/gain_charge
