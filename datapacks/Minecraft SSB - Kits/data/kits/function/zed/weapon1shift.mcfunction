execute as @e[distance=..4,type=!#kits:non_entity,tag=!Invincible,tag=!Zed,tag=!InLabyrinth] at @s run damage @s 6 bypass:player_attack by @p[tag=Zed]
particle dust{color:[0.000,0.000,0.000],scale:1} ~ ~0.75 ~ 1.7 0 1.7 0 500 force
execute if entity @e[distance=..4,type=!#kits:non_entity,tag=!Invincible,tag=!Zed,tag=!InLabyrinth] run scoreboard players add @s kits.ability3CD 50
playsound minecraft:entity.player.attack.sweep neutral @a[distance=..10] ~ ~ ~ 10 0 1

execute at @e[type=armor_stand,tag=zedshadow] run execute as @e[distance=..4,type=!#kits:non_entity,tag=!Invincible,tag=!Zed,tag=!InLabyrinth] at @s run damage @s 6 bypass:player_attack by @e[type=armor_stand,tag=zedshadow,limit=1,sort=nearest]
execute at @e[type=armor_stand,tag=zedshadow] run effect give @e[distance=..4,type=!#kits:non_entity,tag=!Invincible,tag=!Zed,tag=!InLabyrinth] minecraft:slowness 2 1 true
execute at @e[type=armor_stand,tag=zedshadow] if entity @e[distance=..4,type=!#kits:non_entity,tag=!Invincible,tag=!Zed,tag=!InLabyrinth] run scoreboard players add @s kits.ability3CD 50
execute at @e[type=armor_stand,tag=zedshadow] run particle dust{color:[0.000,0.000,0.000],scale:1} ~ ~0.75 ~ 1.7 0 1.7 0 500 force

execute at @e[type=armor_stand,tag=ultshadow] run execute as @e[distance=..4,type=!#kits:non_entity,tag=!Invincible,tag=!Zed,tag=!InLabyrinth] at @s run damage @s 6 bypass:player_attack by @e[type=armor_stand,tag=ultshadow,limit=1,sort=nearest]
execute at @e[type=armor_stand,tag=ultshadow] run effect give @e[distance=..4,type=!#kits:non_entity,tag=!Invincible,tag=!Zed,tag=!InLabyrinth] minecraft:slowness 2 1 true
execute at @e[type=armor_stand,tag=ultshadow] if entity @e[distance=..4,type=!#kits:non_entity,tag=!Invincible,tag=!Zed,tag=!InLabyrinth] run scoreboard players add @s kits.ability3CD 50
execute at @e[type=armor_stand,tag=ultshadow] run particle dust{color:[0.000,0.000,0.000],scale:1} ~ ~0.75 ~ 1.7 0 1.7 0 500 force

scoreboard players set @s kits.ability2CD 0
