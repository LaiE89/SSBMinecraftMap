## Draws Random Paint
execute store result score %vfxUnlimitedVoid.paint.random kits.math run random value 1..6
execute if block ^ ^ ^9 #kits:passable at @s positioned ^ ^ ^9 run function kits:char/gojo/vfx/unlimited_void/paint/types/score_tree