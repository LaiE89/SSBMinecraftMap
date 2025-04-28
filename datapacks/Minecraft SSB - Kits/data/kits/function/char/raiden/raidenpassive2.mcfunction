scoreboard players add @s kits.raycastTick 1
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Raiden,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick 2222
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222

particle soul_fire_flame ~ ~-1.25 ~ 0.3 0 0.3 0 25 force
execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run tp @s ^ ^ ^-0.5
execute as @s[scores={kits.raycastTick=3333}] positioned ^ ^ ^ run tp @s ^ ^ ^
execute if entity @s[scores={kits.raycastTick=21}] run tp @s ^ ^ ^
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run playsound minecraft:entity.player.attack.sweep neutral @a[distance=..10] ~ ~ ~ 5 0.5 1
execute if entity @s[scores={kits.raycastTick=21}] run playsound minecraft:entity.player.attack.sweep neutral @a[distance=..10] ~ ~ ~ 5 0.5 1
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Raiden,tag=!InLabyrinth] at @s run function kits:char/raiden/damage
execute if entity @s[scores={kits.raycastTick=21}] at @s as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Raiden,tag=!InLabyrinth] at @s run function kits:char/raiden/damage

execute as @s[scores={kits.raycastTick=..20}] rotated ~ 0 positioned ^ ^ ^0.5 run function kits:char/raiden/raidenpassive2
