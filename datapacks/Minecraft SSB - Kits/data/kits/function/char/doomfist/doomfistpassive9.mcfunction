scoreboard players add @s kits.raycastTick4 1
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick4 3333
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick4 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick4 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick4 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick4 2222

execute as @s[scores={kits.raycastTick4=2222}] positioned ^ ^ ^ run tp @e[tag=DoomfistKB] ^ ^ ^-0.5
execute as @s[scores={kits.raycastTick4=3333}] positioned ^ ^ ^ run tp @e[tag=DoomfistKB] ^ ^ ^
execute as @s[scores={kits.raycastTick4=2222..}] run execute at @e[tag=DoomfistKB] run playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..40] ~ ~ ~ 3 0 1
execute as @s[scores={kits.raycastTick4=2222..}] run execute at @e[tag=DoomfistKB] run particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 1 100
execute as @s[scores={kits.raycastTick4=2222..}] run execute at @e[tag=DoomfistKB] run particle block{block_state:"minecraft:dirt"} ~ ~1 ~ 1 1 1 1 100 force
execute as @s[scores={kits.raycastTick4=2222..}] run execute as @e[tag=DoomfistKB] at @s run damage @s 6 bypass:player_attack by @p[tag=Doomfist]
execute as @s[scores={kits.raycastTick4=31}] positioned ^ ^ ^ run tp @e[tag=DoomfistKB] ^ ^ ^
execute as @s[scores={kits.raycastTick4=..30}] rotated ~ 0 positioned ^ ^ ^0.5 run function kits:char/doomfist/doomfistpassive9
