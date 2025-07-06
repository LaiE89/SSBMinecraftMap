scoreboard players add @s kits.raycastTick2 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick2 3333
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Ryze,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick2 2222

execute as @s[scores={kits.raycastTick2=2222}] positioned ^ ^ ^ run execute as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Ryze,tag=!InLabyrinth] at @s run function kits:char/ryze/prisondamage
execute as @s[scores={kits.raycastTick2=2222}] run scoreboard players add @s kits.timer3 1
execute as @s[scores={kits.raycastTick2=2222}] run scoreboard players set @s kits.ability1CD 49
execute as @s[scores={kits.raycastTick2=2222}] run scoreboard players set @s kits.ability2CD 0
execute as @s[scores={kits.raycastTick2=2222}] run scoreboard players remove @s[scores={kits.timer2=10..}] kits.timer2 10
execute as @s[scores={kits.raycastTick2=..15}] positioned ^ ^ ^0.5 run function kits:char/ryze/ryzepassive3
