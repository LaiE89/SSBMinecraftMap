scoreboard players add @s kits.raycastTick 1
execute if entity @e[distance=..2.5,type=!#kits:non_entity,tag=!Invincible,tag=!Guts,tag=!InLabyrinth] run scoreboard players set @s[scores={kits.raycastTick=10..}] kits.raycastTick 3333
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s[scores={kits.raycastTick=10..}] kits.raycastTick 3333
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s[scores={kits.raycastTick=10..}] kits.raycastTick 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s[scores={kits.raycastTick=10..}] kits.raycastTick 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s[scores={kits.raycastTick=10..}] kits.raycastTick 2222

execute if entity @e[distance=..2.5,type=!#kits:non_entity,tag=!Invincible,tag=!Guts,tag=!InLabyrinth] run scoreboard players set @s[scores={kits.raycastTick=..9}] kits.raycastTick 100
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s[scores={kits.raycastTick=..9}] kits.raycastTick 100
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s[scores={kits.raycastTick=..9}] kits.raycastTick 100
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s[scores={kits.raycastTick=..9}] kits.raycastTick 100
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s[scores={kits.raycastTick=..9}] kits.raycastTick 100

execute as @s[scores={kits.raycastTick=100}] positioned ^ ^ ^ run function kits:char/guts/smash/dashend
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^-0.5 run function kits:char/guts/smash/dashstart
execute as @s[scores={kits.raycastTick=3333}] positioned ^ ^ ^ run function kits:char/guts/smash/dashstart
execute as @s[scores={kits.raycastTick=26}] positioned ^ ^ ^ run function kits:char/guts/smash/dashstart
execute as @s[scores={kits.raycastTick=..25}] positioned ^ ^ ^0.5 run function kits:char/guts/smash/raycast
