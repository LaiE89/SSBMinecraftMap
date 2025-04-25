scoreboard players add @s kits.raycastTick2 1
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Noctis,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick2 2222

execute as @s[scores={kits.raycastTick2=2222},predicate=kits:items/noctis/oracle] positioned ~ ~ ~ run scoreboard players add @s[scores={kits.timer=..99}] kits.timer 5
execute as @s[scores={kits.raycastTick2=2222},predicate=kits:items/noctis/oracle] positioned ~ ~ ~ run scoreboard players set @s[scores={kits.timer=101..}] kits.timer 100

execute as @s[scores={kits.raycastTick2=2222},predicate=kits:items/noctis/tall] positioned ~ ~ ~ run execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Noctis,tag=!InLabyrinth,limit=1,sort=nearest] at @s run function kits:char/noctis/damagecalc


execute as @s[scores={kits.raycastTick2=..8}] positioned ^ ^ ^0.5 run function kits:char/noctis/attackraycast
