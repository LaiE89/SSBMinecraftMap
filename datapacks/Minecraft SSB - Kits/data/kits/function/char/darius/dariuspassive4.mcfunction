scoreboard players add @s kits.raycastTick3 1
execute if entity @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Darius,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick3 2222
execute as @s[scores={kits.raycastTick3=2222..}] positioned ^ ^ ^ run scoreboard players set @s kits.raycastTick2 0
execute as @s[scores={kits.raycastTick3=2222..}] positioned ^ ^ ^ run execute at @s positioned ~ ~1.5 ~ run function kits:char/darius/dariuspassive3
execute as @s[scores={kits.raycastTick3=2222..}] positioned ^ ^ ^ run execute as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Darius,tag=!InLabyrinth] at @s run function kits:char/darius/guillotinedamage
execute as @s[scores={kits.raycastTick3=2222..}] positioned ^ ^ ^ run scoreboard players set @s kits.ability4CD 0
execute as @s[scores={kits.raycastTick3=..8}] positioned ^ ^ ^0.5 run function kits:char/darius/dariuspassive4
