scoreboard players add @s kits.raycastTick3 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick3 3333
execute if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Spawn,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick3 2222
execute as @s[scores={kits.raycastTick3=2222}] positioned ^ ^ ^ run tag @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Spawn,tag=!InLabyrinth] add SpawnBurning
execute as @s[scores={kits.raycastTick3=2222}] positioned ^ ^ ^ run execute as @e[distance=..2,limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Spawn,tag=!InLabyrinth] at @s run damage @s 6 bypass:player_attack_no_kb by @p[tag=Spawn]
execute as @s[scores={kits.raycastTick3=2222}] run playsound minecraft:item.trident.thunder neutral @a[distance=..50] ~ ~ ~ 4 0 1
execute as @s[scores={kits.raycastTick3=2222}] run scoreboard players reset @s kits.timer4
execute as @s[scores={kits.raycastTick3=2222}] run scoreboard players remove @s kits.timer3 50
execute as @s[scores={kits.raycastTick3=2222}] run scoreboard players set @s kits.ability5CD 1

execute as @s[scores={kits.raycastTick3=..1111}] positioned ^ ^ ^0.5 run function kits:char/spawn/spawnpassive3
