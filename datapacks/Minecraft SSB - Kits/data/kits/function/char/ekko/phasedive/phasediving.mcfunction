particle soul_fire_flame ^-0.5 ^1.3 ^0.5 0.1 0.1 0.1 0 3 force
scoreboard players add @s kits.timer 1
execute if entity @s[gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/ekko/bat] run function kits:char/ekko/phasedive/attack
tag @s[scores={kits.timer=40..}] remove EkkoDiving
scoreboard players reset @s[scores={kits.timer=40..}] kits.timer
