scoreboard players add @s RaycastTimer 1
execute if entity @e[distance=..2,tag=!InLabyrinth,tag=!Kaneki,type=!experience_orb,type=!armor_stand,type=!arrow,type=!item,type=!firework_rocket,limit=1,sort=nearest] run scoreboard players set @s RaycastTimer 2222
execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 3333

execute positioned ~ ~-0.5 ~ run particle minecraft:dust 2 0 0 2 ~ ~ ~ 0 0 0 0 1
execute as @s[scores={RaycastTimer=2222..2300}] positioned ^ ^ ^ run execute as @e[distance=..2,tag=!InLabyrinth,tag=!Kaneki,type=!experience_orb,type=!armor_stand,type=!arrow,type=!item,type=!firework_rocket,limit=1,sort=nearest] at @s run function datapack:damage1
execute as @s[scores={RaycastTimer=2222..2300}] positioned ^ ^ ^ run execute as @e[distance=..2,tag=!InLabyrinth,tag=!Kaneki,type=!experience_orb,type=!armor_stand,type=!arrow,type=!item,type=!firework_rocket,limit=1,sort=nearest] at @s run playsound minecraft:entity.player.attack.crit neutral @a[distance=..10] ~ ~ ~ 3 0.5 1
execute as @s[scores={RaycastTimer=2222..2300}] positioned ^ ^ ^ run execute as @e[distance=..2,tag=!InLabyrinth,tag=!Kaneki,type=!experience_orb,type=!armor_stand,type=!arrow,type=!item,type=!firework_rocket,limit=1,sort=nearest] at @s run particle minecraft:block minecraft:redstone_block ~ ~1 ~ 0.4 0.5 0.4 0 50

execute as @s[scores={RaycastTimer=3333..}] positioned ^ ^ ^ run playsound minecraft:entity.player.hurt neutral @a[distance=..20] ~ ~ ~ 2 0 1
execute as @s[scores={RaycastTimer=3333..}] positioned ^ ^ ^ run summon armor_stand ~ ~ ~ {Tags:["KanekiKagune"],Small:1b,Invisible:1b,NoGravity:1b,Marker:1b,Invulnerable:1,DisabledSlots:2039583}

execute as @s[scores={RaycastTimer=16}] positioned ^ ^ ^ run summon armor_stand ~ ~ ~ {Tags:["KanekiKagune"],Small:1b,Invisible:1b,Invulnerable:1,DisabledSlots:2039583}

execute as @s[scores={RaycastTimer=..15}] positioned ^ ^ ^0.5 run function datapack:kaneki_functions/kanekipassive5