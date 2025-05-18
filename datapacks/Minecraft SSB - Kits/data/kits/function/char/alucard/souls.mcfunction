scoreboard players add @s kits.timer 1
particle minecraft:dust{color:[1.500,0.000,0.000],scale:0.7} ~ ~ ~ 0.2 0 0.2 0 5 force
execute if entity @p[distance=..10,gamemode=!spectator,tag=Alucard] at @s facing entity @p[distance=..10,gamemode=!spectator,tag=Alucard] feet run tp @s ^ ^ ^0.5
execute if entity @p[distance=..2,gamemode=!spectator,tag=Alucard] run function kits:char/alucard/soulpickup

execute if score @s kits.timer matches 100.. run kill @s