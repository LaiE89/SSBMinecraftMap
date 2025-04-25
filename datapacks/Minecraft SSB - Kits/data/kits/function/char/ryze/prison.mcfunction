execute if entity @s[scores={kits.timer=2}] run tp @e[tag=RyzeInPrison,limit=1,sort=nearest] ~ ~1.5 ~
execute if entity @s[scores={kits.timer=3..}] run tp @e[tag=RyzeInPrison,limit=1,sort=nearest] ~ ~1.5 ~
execute if entity @s run function kits:char/ryze/prisonparticles
scoreboard players add @s kits.timer 1
execute if entity @s[scores={kits.timer=40..}] run tag @e[tag=RyzeInPrison] remove RyzeInPrison
kill @s[scores={kits.timer=40..}]
