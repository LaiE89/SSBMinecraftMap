particle sneeze ~ ~1.2 ~ 0.4 0.8 0.4 0 10 force

scoreboard players add @s kits.timer2 1

execute as @s[scores={kits.timer2=1}] at @s run tp @s @e[tag=LaiethPossessed,limit=1,sort=nearest]
execute as @s[scores={kits.timer2=2..}] at @s run tp @e[tag=LaiethPossessed,limit=1,sort=nearest] @s

execute if entity @s[scores={kits.timer2=40..}] run tag @e[tag=LaiethPossessed] remove LaiethPossessed
tag @p[tag=LaiethPossessed,scores={kits.criterion.death=1..}] remove LaiethPossessed
execute as @s[scores={kits.timer2=40..}] at @s run function kits:char/laieth/possessionfinish
