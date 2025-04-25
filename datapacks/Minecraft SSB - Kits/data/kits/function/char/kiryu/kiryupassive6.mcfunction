scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Kiryu,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 2222

execute at @s[scores={kits.raycastTick=2222}] run particle block{block_state:"minecraft:dirt"} ~ ~0.2 ~ 2 0 2 0 200 force
execute at @s[scores={kits.raycastTick=2222}] run playsound minecraft:entity.ender_dragon.flap neutral @a[distance=..30] ~ ~ ~ 3 0 1
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run execute as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Kiryu,tag=!InLabyrinth] at @s run function kits:char/kiryu/thekneedamage
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run tp @s ^ ^ ^-1
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run scoreboard players set @s kits.timer2 1
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run scoreboard players set @s kits.ability1CD 90

execute as @s[scores={kits.raycastTick=..30}] positioned ^ ^ ^0.5 run function kits:char/kiryu/kiryupassive6
