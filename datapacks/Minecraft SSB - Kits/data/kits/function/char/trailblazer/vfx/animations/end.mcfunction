# When Animation Ends
scoreboard players add @s kits.timer2 1
execute if score @s kits.timer2 matches 5.. run function kits:char/trailblazer/vfx/spawn/constellation/animate
