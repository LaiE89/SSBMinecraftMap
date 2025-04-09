scoreboard players set @s kits.raycastTick 0
execute at @s rotated ~ 0 positioned ~ ~ ~ run function kits:saber/saberpassive2
execute at @s rotated ~ 0 run particle sweep_attack ^1 ^1 ^0.5 0.3 0 0.3 0 10 force
execute at @s rotated ~ 0 run particle dust{color:[1.000,1.000,1.000],scale:1} ^1 ^1 ^0.5 0.8 0 0.8 0 100 force
playsound minecraft:entity.player.attack.knockback neutral @a[distance=..20] ~ ~ ~ 3 0 1
execute at @s as @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Saber,tag=!InLabyrinth] at @s run damage @s 6 bypass:player_attack by @p[tag=Saber]
tag @s add SaberStrikeAir2
tag @s remove SaberStrikeAir
