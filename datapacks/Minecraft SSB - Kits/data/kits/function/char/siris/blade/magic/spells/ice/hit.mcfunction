## Execute at Enemies Hit by Ice
# Effects
damage @s 3 bypass:player_attack by @p[tag=Siris]
effect give @s slow_falling 3 0 true
effect give @s slowness 3 5 true
effect give @s weakness 3 1 true

# VFX
execute rotated ~180 0 run function kits:char/siris/vfx/particles/iced
