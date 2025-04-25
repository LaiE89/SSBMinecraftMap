## Rapid Slash VFX
# X-Rotation
tp @s ~ ~ ~ ~90 ~

# Y-Rotation
scoreboard players add @s[tag=AbianRslashYRotUp] kits.timer 10
scoreboard players remove @s[tag=AbianRslashYRotDown] kits.timer 10
execute if score @s kits.timer matches ..-20 run function kits:char/abian/moves/rapid_slash/vfx/rot_up
execute if score @s kits.timer matches 20.. run function kits:char/abian/moves/rapid_slash/vfx/rot_down
execute store result entity @s Rotation[1] float 1 run scoreboard players get @s kits.timer

# VFX
particle smoke ~ ~0.25 ~ 0.25 0.25 0.25 0.05 3 force
execute positioned ^-0.09375 ^1 ^ run function kits:char/abian/vfx/particles/slash/type4
