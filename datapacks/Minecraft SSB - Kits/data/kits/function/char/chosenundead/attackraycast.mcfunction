scoreboard players add @s kits.raycastTick2 1
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!ChosenUndead,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick2 2222

execute as @s[scores={kits.raycastTick2=2222},predicate=kits:items/chosenundead/claymore] positioned ~ ~ ~ run execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!ChosenUndead,tag=!InLabyrinth,limit=1,sort=nearest] at @s run function kits:char/chosenundead/damagecalc

execute as @s[scores={kits.raycastTick2=9},predicate=kits:items/chosenundead/claymore] positioned ~ ~ ~ at @s run function kits:char/chosenundead/attacksweep

execute as @s[scores={kits.raycastTick2=..8}] positioned ^ ^ ^0.5 run function kits:char/chosenundead/attackraycast
