scoreboard players add @s kits.raycastTick3 1
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Brucelee,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick3 2222
execute as @s[scores={kits.raycastTick3=2222..}] positioned ^ ^ ^ run execute at @s run particle minecraft:sweep_attack ^ ^1 ^2 0.5 0 0.5 0 10
execute as @s[scores={kits.raycastTick3=2222..}] positioned ^ ^ ^ run execute as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Brucelee,tag=!InLabyrinth] at @s run function kits:char/brucelee/dragonkickknockback
execute as @s[scores={kits.raycastTick3=2222..}] positioned ^ ^ ^ run scoreboard players set @s kits.ability5CD 0
execute as @s[scores={kits.raycastTick3=..8}] positioned ^ ^ ^0.5 run function kits:char/brucelee/dragonkickdetect
