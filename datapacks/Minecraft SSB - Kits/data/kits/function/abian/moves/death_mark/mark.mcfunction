## Execute at Marked Enemies
# Mark duration
scoreboard players remove @s kits.specific.abianMarked 1

# VFX
execute if score %AbianVFXDelay kits.timer matches 4 rotated ~ 0 positioned ^0.0625 ^2.875 ^ run function kits:abian/vfx/particles/mark
