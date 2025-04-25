## Execute at Midoriya at Full Cowl 100%
# Status effect
effect give @s minecraft:speed 2 0 true

# Particles
particle dust{color:[0.000,1.000,0.910],scale:0.5} ~ ~ ~ 0.35 0.75 0.35 0 5 force

# Lightning pulse animation
scoreboard players add @s kits.timer2 1
execute if entity @s[scores={kits.timer2=5}] run function kits:char/midoriya/full_cowl/energy_focus/100percent/passive/lightning_pulse_animation/frame1
execute if entity @s[scores={kits.timer2=10}] run function kits:char/midoriya/full_cowl/energy_focus/100percent/passive/lightning_pulse_animation/frame2
execute if entity @s[scores={kits.timer2=15}] run function kits:char/midoriya/full_cowl/energy_focus/100percent/passive/lightning_pulse_animation/frame3
execute if entity @s[scores={kits.timer2=20}] run function kits:char/midoriya/full_cowl/energy_focus/100percent/passive/lightning_pulse_animation/frame4
execute if entity @s[scores={kits.timer2=25}] run function kits:char/midoriya/full_cowl/energy_focus/100percent/passive/lightning_pulse_animation/frame5
execute if entity @s[scores={kits.timer2=30}] run function kits:char/midoriya/full_cowl/energy_focus/100percent/passive/lightning_pulse_animation/frame6
execute if entity @s[scores={kits.timer2=35}] rotated ~180 ~ run function kits:char/midoriya/full_cowl/energy_focus/100percent/passive/lightning_pulse_animation/frame1
execute if entity @s[scores={kits.timer2=40}] rotated ~180 ~ run function kits:char/midoriya/full_cowl/energy_focus/100percent/passive/lightning_pulse_animation/frame2
execute if entity @s[scores={kits.timer2=45}] rotated ~180 ~ run function kits:char/midoriya/full_cowl/energy_focus/100percent/passive/lightning_pulse_animation/frame3
execute if entity @s[scores={kits.timer2=50}] rotated ~180 ~ run function kits:char/midoriya/full_cowl/energy_focus/100percent/passive/lightning_pulse_animation/frame4
execute if entity @s[scores={kits.timer2=55}] rotated ~180 ~ run function kits:char/midoriya/full_cowl/energy_focus/100percent/passive/lightning_pulse_animation/frame5
execute if entity @s[scores={kits.timer2=60}] rotated ~180 ~ run function kits:char/midoriya/full_cowl/energy_focus/100percent/passive/lightning_pulse_animation/frame6
scoreboard players reset @s[scores={kits.timer2=180..}] kits.timer2
