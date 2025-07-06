scoreboard players add @s kits.timer2 1
execute at @s rotated ~ 0 run particle electric_spark ^-0.4 ^0.8 ^0.4 0.03 0.03 0.03 1 3 force
tag @s[scores={kits.timer2=100..}] remove EdwardBreak
scoreboard players reset @s[scores={kits.timer2=100..}] kits.timer2
