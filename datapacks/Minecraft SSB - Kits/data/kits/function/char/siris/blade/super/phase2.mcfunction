## Execute at Result Damage
# VFX (damage procs also in vfx function)
scoreboard players add @s kits.timer2 1
execute if score @s kits.timer2 matches 4.. run function kits:char/siris/vfx/animations/slashes/animate
