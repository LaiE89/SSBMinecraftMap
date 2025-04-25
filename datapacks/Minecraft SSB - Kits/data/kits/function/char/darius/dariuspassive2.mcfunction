scoreboard players add @s kits.raycastTick 1
execute if entity @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Darius,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 2222
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run execute at @s run particle minecraft:sweep_attack ^ ^1.1 ^2 
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run execute as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Darius,tag=!InLabyrinth] at @s run function kits:char/darius/cripplingdamage
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run scoreboard players set @s kits.ability3CD 0
execute as @s[scores={kits.raycastTick=..8}] positioned ^ ^ ^0.5 run function kits:char/darius/dariuspassive2
