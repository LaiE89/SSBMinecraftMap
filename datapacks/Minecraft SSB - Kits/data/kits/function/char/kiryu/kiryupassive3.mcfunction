scoreboard players add @s kits.raycastTick 1
execute unless block ^0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ^-0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^-0.5 if entity @e[distance=..6,sort=nearest,limit=1,type=!#kits:non_entity,tag=!Invincible,tag=!Kiryu,tag=!InLabyrinth] run return run tp @s ^ ^ ^ facing entity @e[distance=..6,sort=nearest,limit=1,type=!#kits:non_entity,tag=!Invincible,tag=!Kiryu,tag=!InLabyrinth]
execute as @s[scores={kits.raycastTick=3333}] positioned ^ ^ ^ if entity @e[distance=..6,sort=nearest,limit=1,type=!#kits:non_entity,tag=!Invincible,tag=!Kiryu,tag=!InLabyrinth] run return run tp @s ^ ^ ^ facing entity @e[distance=..6,sort=nearest,limit=1,type=!#kits:non_entity,tag=!Invincible,tag=!Kiryu,tag=!InLabyrinth]
execute as @s[scores={kits.raycastTick=7}] positioned ^ ^ ^ if entity @e[distance=..6,sort=nearest,limit=1,type=!#kits:non_entity,tag=!Invincible,tag=!Kiryu,tag=!InLabyrinth] run return run tp @s ~ ~ ~ facing entity @e[distance=..6,sort=nearest,limit=1,type=!#kits:non_entity,tag=!Invincible,tag=!Kiryu,tag=!InLabyrinth]

execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run tp @s ^ ^ ^-0.5
execute as @s[scores={kits.raycastTick=3333}] positioned ^ ^ ^ run tp @s ^ ^ ^
execute as @s[scores={kits.raycastTick=7}] positioned ^ ^ ^ run tp @s ~ ~ ~

execute as @s[scores={kits.raycastTick=..6}] rotated ~ 0 positioned ^ ^ ^0.5 run function kits:char/kiryu/kiryupassive3
