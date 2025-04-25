scoreboard players add @s kits.timer 1
effect give @s slowness 1 2 true
effect give @s weakness 1 9 true
scoreboard players add @s[scores={kits.timer2=..3}] kits.timer2 1
execute if entity @s[scores={kits.criterion.COS=1..},predicate=kits:items/raiden/murasama] if entity @s[scores={kits.timer2=4..}] run function kits:char/raiden/blademodeslash
effect clear @s[scores={kits.timer=100..}] slowness
effect clear @s[scores={kits.timer=100..}] weakness
attribute @s[scores={kits.timer=100..}] minecraft:knockback_resistance base set 0
tag @s[scores={kits.timer=100..}] remove RaidenBladeMode
