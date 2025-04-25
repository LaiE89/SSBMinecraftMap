scoreboard players add @s kits.specific.ryzeFluxTick 1
execute at @s run particle dust{color:[0.000,0.800,1.000],scale:1} ~ ~ ~ 0.5 0 0.5 0 30 force
execute at @s if entity @e[type=area_effect_cloud,tag=overloadspread,distance=..2] run function kits:char/ryze/fluxspreaddamage

execute if score @s kits.specific.ryzeFluxTick matches 75.. run function kits:char/ryze/fluxend
