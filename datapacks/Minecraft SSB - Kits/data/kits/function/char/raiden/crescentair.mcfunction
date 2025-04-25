scoreboard players add @s kits.timer4 1
execute if entity @s[scores={kits.timer4=10}] run function kits:char/raiden/crescentslam
tag @s[scores={kits.timer4=10..}] remove RaidenAirCrescent
