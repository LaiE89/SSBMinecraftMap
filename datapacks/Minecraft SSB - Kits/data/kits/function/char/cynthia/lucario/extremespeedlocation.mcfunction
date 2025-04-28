scoreboard players add @s kits.raycastTick 1
particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~1 ~ 0.3 0.3 0.3 0 10 force
execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Cynthia,tag=!InLabyrinth] at @s run damage @s 1 bypass:player_attack by @p[tag=Cynthia]
execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Cynthia,tag=!InLabyrinth] at @s run playsound minecraft:entity.player.attack.sweep neutral @a[distance=..30] ~ ~ ~ 10 0.75 1
execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Cynthia,tag=!InLabyrinth] at @s run particle explosion ~ ~1 ~ 0 0 0 0 1 force

execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run tp @s ^ ^ ^-0.5
execute as @s[scores={kits.raycastTick=3333}] positioned ^ ^ ^ run tp @s ^ ^ ^
execute if entity @s[scores={kits.raycastTick=20}] run tp @s ^ ^ ^

execute as @s[scores={kits.raycastTick=..19}] positioned ^ ^ ^0.5 rotated ~ 0 run function kits:char/cynthia/lucario/extremespeedlocation
