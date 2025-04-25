## Execute at Marked Enemies
# Mark duration
scoreboard players remove @s kits.specific.abianMarked 1

# VFX
execute if score @p[tag=Abian] kits.timer7 matches 4 rotated ~ 0 positioned ^0.0625 ^2.875 ^ run function kits:char/abian/vfx/particles/mark
