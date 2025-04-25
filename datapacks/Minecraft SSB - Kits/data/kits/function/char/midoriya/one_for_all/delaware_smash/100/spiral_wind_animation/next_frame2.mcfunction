## Execute at Spiral Wind Animation AEC
# Plays the next frame every tick
schedule function kits:char/midoriya/one_for_all/delaware_smash/100/spiral_wind_animation/next_frame 1t replace

# Determines the next frame
scoreboard players add @s kits.timer 1
execute if entity @s[scores={kits.timer=1}] run function kits:char/midoriya/one_for_all/delaware_smash/100/spiral_wind_animation/frame1
execute if entity @s[scores={kits.timer=2}] run function kits:char/midoriya/one_for_all/delaware_smash/100/spiral_wind_animation/frame2
execute if entity @s[scores={kits.timer=3}] run function kits:char/midoriya/one_for_all/delaware_smash/100/spiral_wind_animation/frame3
execute if entity @s[scores={kits.timer=4}] run function kits:char/midoriya/one_for_all/delaware_smash/100/spiral_wind_animation/frame4
execute if entity @s[scores={kits.timer=5}] run function kits:char/midoriya/one_for_all/delaware_smash/100/spiral_wind_animation/frame5
execute if entity @s[scores={kits.timer=6}] run function kits:char/midoriya/one_for_all/delaware_smash/100/spiral_wind_animation/frame6
execute if entity @s[scores={kits.timer=7}] run function kits:char/midoriya/one_for_all/delaware_smash/100/spiral_wind_animation/frame7
execute if entity @s[scores={kits.timer=8}] run function kits:char/midoriya/one_for_all/delaware_smash/100/spiral_wind_animation/frame8
execute if entity @s[scores={kits.timer=9}] run function kits:char/midoriya/one_for_all/delaware_smash/100/spiral_wind_animation/frame9
execute if entity @s[scores={kits.timer=10}] run function kits:char/midoriya/one_for_all/delaware_smash/100/spiral_wind_animation/frame10
