scoreboard players add @s kits.raycastTick 1
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Sekiro,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 2222
execute as @s[scores={kits.raycastTick=2222},predicate=kits:items/sekiro/kusabimaru] positioned ~ ~ ~ run execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=SekiroPostureBroken,tag=!Sekiro,tag=!InLabyrinth,limit=1,sort=nearest] at @s run function kits:char/sekiro/posture/posturebreakdamage
execute as @s[scores={kits.raycastTick=2222},predicate=kits:items/sekiro/kusabimaru] positioned ~ ~ ~ run execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Sekiro,tag=!InLabyrinth,limit=1,sort=nearest] at @s run function kits:char/sekiro/posture/posturegain {Posture:15}
execute as @s[scores={kits.raycastTick=..10}] positioned ^ ^ ^0.5 run function kits:char/sekiro/attack/attackraycast
