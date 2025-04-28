scoreboard players add @s kits.raycastTick 1
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Tanjiro,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 2222
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^-0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run tp @s ^ ^ ^-0.5
execute as @s[scores={kits.raycastTick=3333}] positioned ^ ^ ^ run tp @s ^ ^ ^
execute if entity @s[scores={kits.raycastTick=31}] run tp @s ^ ^ ^

execute as @s[scores={kits.raycastTick=..30}] positioned ^ ^ ^0.5 run function kits:char/tanjiro/tanjiropassive2
