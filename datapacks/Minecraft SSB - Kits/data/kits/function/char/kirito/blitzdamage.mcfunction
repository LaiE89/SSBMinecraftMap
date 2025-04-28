execute rotated ~ 0 positioned ^-1 ^2 ^ run function kits:char/kirito/sliceparticles
playsound minecraft:entity.player.attack.sweep neutral @a[distance=..30] ~ ~ ~ 5 2 1
damage @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Kirito,tag=!InLabyrinth,limit=1,sort=nearest] 1.5 bypass:player_attack by @p[tag=Kirito]
tp @s @e[distance=..8,type=!#kits:non_entity,tag=!Invincible,tag=!Kirito,tag=!InLabyrinth,limit=1,sort=furthest]
scoreboard players add @s kits.timer2 1
execute if entity @s[scores={kits.timer2=4..}] run function kits:char/kirito/blitzend
scoreboard players reset @s kits.timer
