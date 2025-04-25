scoreboard players add @s kits.timer 1
tp @s ~ ~ ~ ~35 ~
execute if entity @s[scores={kits.timer=..9}] run particle dust{color:[1.000,0.000,0.000],scale:2} ^ ^1 ^5 0.5 0.3 0.5 0 10 force

execute if entity @s[scores={kits.timer=10}] at @s run playsound minecraft:entity.ender_dragon.shoot neutral @a[distance=..15] ~ ~ ~ 5 0 1
execute if entity @s[scores={kits.timer=10..20}] at @s positioned ^ ^1 ^1 run function kits:char/darius/decimateparticles

execute if entity @s[scores={kits.timer=20..}] run tag @e[tag=DariusDecimated] remove DariusDecimated
