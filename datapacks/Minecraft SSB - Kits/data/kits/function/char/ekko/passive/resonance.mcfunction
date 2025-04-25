execute if score @s kits.specific.ekkoResonance matches 1 run particle dust{color:[1.000,1.000,1.000],scale:1} ~ ~0.2 ~ 0.5 0 0.5 0 5 force
execute if score @s kits.specific.ekkoResonance matches 2 run particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~0.2 ~ 0.5 0 0.5 0 10 force

execute if score @s kits.specific.ekkoResonance matches 3.. run function kits:char/ekko/passive/damage