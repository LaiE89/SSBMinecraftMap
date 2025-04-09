particle flame ~ ~3 ~ 0.5 3 0.5 0 10 force
particle dust{color:[0.000,1.000,0.000],scale:3} ~ ~3 ~ 0.5 3 0.5 0 5 force
effect give @s minecraft:slowness 1 4 true
effect give @s wither 1 4 true

scoreboard players add @p[tag=Spawn] kits.timer4 1
execute if entity @p[tag=Spawn,scores={kits.timer4=60..}] run tag @s remove SpawnBurning
scoreboard players reset @p[tag=Spawn,scores={kits.timer4=60..}] kits.timer4
