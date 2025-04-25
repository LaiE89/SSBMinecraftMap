scoreboard players add @s kits.raycastTick 1
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Denji,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 2222
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run execute at @s run particle minecraft:sweep_attack ^ ^1.1 ^2 
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run execute as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Denji,tag=!InLabyrinth] at @s run function kits:char/chainsawman/groinkickdamage
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run scoreboard players add @s[scores={kits.timer=..4}] kits.timer 1
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run scoreboard players set @s kits.ability1CD 1
execute as @s[scores={kits.raycastTick=..8}] positioned ^ ^ ^0.5 run function kits:char/chainsawman/chainsawmanpassive2
