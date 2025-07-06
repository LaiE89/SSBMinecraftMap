effect give @s speed 1 1 true
effect give @s resistance 1 1 true
effect give @s minecraft:strength 1 0 true
particle dust{color:[1.500,0.000,0.000],scale:1.75} ~ ~1 ~ 0.4 0.8 0.4 0.001 1 force

scoreboard players add @s kits.timer4 1
execute if score @s kits.timer4 matches 10.. run scoreboard players remove @s kits.timer3 1
scoreboard players reset @s[scores={kits.timer4=10..}] kits.timer4

execute if score @s kits.criterion.resistDmg matches 1.. run scoreboard players operation @s kits.timer3 -= @s kits.criterion.resistDmg
execute if score @s kits.timer3 matches ..0 run function kits:char/kratos/spartanrageend
