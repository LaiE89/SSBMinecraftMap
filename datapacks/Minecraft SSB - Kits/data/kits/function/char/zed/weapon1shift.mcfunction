execute as @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Zed,tag=!InLabyrinth] at @s run damage @s 6 bypass:player_attack by @p[tag=Zed]
particle dust{color:[0.000,0.000,0.000],scale:1} ~ ~0.75 ~ 1.7 0 1.7 0 500 force
execute if entity @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Zed,tag=!InLabyrinth] run scoreboard players add @s kits.ability3CD 50
playsound minecraft:entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 10 0 1

execute at @e[type=armor_stand,tag=ZedShadow] run execute as @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Zed,tag=!InLabyrinth] at @s run damage @s 6 bypass:player_attack by @e[type=armor_stand,tag=ZedShadow,limit=1,sort=nearest]
execute at @e[type=armor_stand,tag=ZedShadow] run effect give @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Zed,tag=!InLabyrinth] minecraft:slowness 2 1 true
execute at @e[type=armor_stand,tag=ZedShadow] if entity @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Zed,tag=!InLabyrinth] run scoreboard players add @s kits.ability3CD 50
execute at @e[type=armor_stand,tag=ZedShadow] run particle dust{color:[0.000,0.000,0.000],scale:1} ~ ~0.75 ~ 1.7 0 1.7 0 500 force

execute at @e[type=armor_stand,tag=ZedUltShadow] run execute as @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Zed,tag=!InLabyrinth] at @s run damage @s 6 bypass:player_attack by @e[type=armor_stand,tag=ZedUltShadow,limit=1,sort=nearest]
execute at @e[type=armor_stand,tag=ZedUltShadow] run effect give @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Zed,tag=!InLabyrinth] minecraft:slowness 2 1 true
execute at @e[type=armor_stand,tag=ZedUltShadow] if entity @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Zed,tag=!InLabyrinth] run scoreboard players add @s kits.ability3CD 50
execute at @e[type=armor_stand,tag=ZedUltShadow] run particle dust{color:[0.000,0.000,0.000],scale:1} ~ ~0.75 ~ 1.7 0 1.7 0 500 force

scoreboard players set @s[scores={kits.ability3CD=301..}] kits.ability3CD 300

scoreboard players set @s kits.ability2CD 0
