scoreboard players add @s kits.raycastTick2 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick2 3333
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Ekko,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick2 2222

execute as @s[scores={kits.raycastTick2=2222}] positioned ^ ^ ^ run tp @s ^ ^ ^-1
execute as @s[scores={kits.raycastTick2=2222}] positioned ^ ^ ^ run execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Ekko,tag=!InLabyrinth] at @s run damage @s 6 bypass:player_attack by @p[tag=Ekko]
execute as @s[scores={kits.raycastTick2=2222}] positioned ^ ^ ^ run scoreboard players add @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Ekko,tag=!InLabyrinth,tag=!EkkoPassiveCD] kits.specific.ekkoResonance 1
execute as @s[scores={kits.raycastTick2=2222}] positioned ^ ^ ^ run playsound minecraft:entity.arrow.hit_player neutral @a[distance=..20] ~ ~ ~ 2 0 1
execute as @s[scores={kits.raycastTick2=2222}] positioned ^ ^ ^ run particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~ ~ 0.4 1 0.4 0 100 force
execute as @s[scores={kits.raycastTick2=2222}] positioned ^ ^ ^ run tag @s remove EkkoDiving
execute as @s[scores={kits.raycastTick2=2222}] positioned ^ ^ ^ run scoreboard players reset @s kits.timer
execute as @s[scores={kits.raycastTick2=..30}] positioned ^ ^ ^0.5 run function kits:ekko/ekkopassive2
