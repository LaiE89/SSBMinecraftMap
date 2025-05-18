execute if entity @s[tag=!GutsPivotSwing] run function kits:char/guts/cleave/regularswing
execute if entity @s[tag=GutsPivotSwing] run function kits:char/guts/cleave/pivotswing
attribute @s minecraft:attack_speed modifier add attackspeed.cleave.guts -20 add_value