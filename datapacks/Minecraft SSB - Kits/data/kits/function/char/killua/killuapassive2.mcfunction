scoreboard players add @s kits.raycastTick 1
execute if entity @s[tag=!KilluaLightningPalm] as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Killua,tag=!InLabyrinth] at @s run damage @s 1 bypass:player_attack by @p[tag=Killua]
execute if entity @s[tag=KilluaLightningPalm] as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Killua,tag=!InLabyrinth] at @s run scoreboard players reset @p[tag=Killua] kits.timer2
execute if entity @s[tag=KilluaLightningPalm] as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Killua,tag=!InLabyrinth] at @s run damage @s 12 bypass:player_attack by @p[tag=Killua]
execute if entity @s[tag=KilluaLightningPalm] as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Killua,tag=!InLabyrinth] at @s run particle minecraft:explosion ~ ~1.5 ~ 0 0 0 0 1 force
execute if entity @s[tag=KilluaLightningPalm] as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Killua,tag=!InLabyrinth] at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.5 50 force
execute if entity @s[tag=KilluaLightningPalm] as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Killua,tag=!InLabyrinth] at @s run playsound minecraft:entity.lightning_bolt.impact neutral @a[distance=..30] ~ ~ ~ 3 0.5 1
execute if entity @s[tag=KilluaLightningPalm] as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Killua,tag=!InLabyrinth] at @s run tag @p[tag=Killua,tag=KilluaLightningPalm] remove KilluaLightningPalm

execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Killua,tag=!InLabyrinth] at @s run playsound minecraft:entity.wither.break_block neutral @a[distance=..30] ~ ~ ~ 2 1.25 1
execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Killua,tag=!InLabyrinth] at @s run particle block{block_state:"minecraft:redstone_block"} ~ ~ ~ 0.4 1 0.4 0 50 force
execute if entity @s[tag=KilluaGodspeed] as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Killua,tag=!InLabyrinth] at @s run effect give @s minecraft:blindness 1 0 true
execute if entity @s[tag=KilluaGodspeed] as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Killua,tag=!InLabyrinth] at @s run effect give @s minecraft:slowness 1 9 true

execute unless block ^0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ^-0.71 ^ ^ #kits:passable run scoreboard players set @s kits.raycastTick 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute unless block ^ ^-0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick 2222

execute as @s[scores={kits.raycastTick=2222}] positioned ^ ^ ^ run tp @s ^ ^ ^-0.5
execute as @s[scores={kits.raycastTick=3333}] positioned ^ ^ ^ run tp @s ^ ^ ^
execute if entity @s[scores={kits.raycastTick=26}] run tp @s ^ ^ ^

execute as @s[scores={kits.raycastTick=..25}] positioned ^ ^ ^0.5 run function kits:char/killua/killuapassive2
