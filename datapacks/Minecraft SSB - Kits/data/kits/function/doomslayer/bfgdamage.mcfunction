#function kits:damage1
damage @s 0.2 bypass:player_attack_no_kb by @e[type=armor_stand,tag=bfg,limit=1,sort=nearest] from @p[tag=Doomslayer]
effect give @s minecraft:slowness 1 0 true
execute at @e[type=armor_stand,tag=bfg] run playsound minecraft:entity.bee.hurt neutral @a[distance=..10] ~ ~ ~ 1 0.5 1
execute as @e[type=armor_stand,tag=bfg] at @s positioned ~ ~1 ~ facing entity @e[distance=..8,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Doomslayer,tag=!InLabyrinth] eyes run function kits:doomslayer/doomslayerpassive2

scoreboard players add @p[tag=Doomslayer,scores={kits.ability7CD=..99}] kits.ability7CD 1