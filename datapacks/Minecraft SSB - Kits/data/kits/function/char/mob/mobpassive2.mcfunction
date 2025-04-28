scoreboard players add @s kits.raycastTick 1
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^-0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute if entity @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Mob,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 2222
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run tp @s ^ ^ ^-0.5
execute as @s[scores={kits.raycastTick=3333}] positioned ^ ^ ^ run tp @s ^ ^ ^
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run execute as @e[distance=..6,type=!#kits:non_entity,tag=!Invincible,tag=!Mob,tag=!InLabyrinth] at @s run damage @s 6 bypass:player_attack by @p[tag=Mob]

execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run particle flash ~ ~ ~ 0 0 0 0 20 force
execute as @s[scores={kits.raycastTick=..1111}] positioned ^ ^ ^0.5 run function kits:char/mob/mobpassive2
