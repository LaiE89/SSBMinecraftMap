execute store result score @s kits.timer run data get entity @s Age
execute if score @s kits.timer matches 0 run execute positioned as @p[tag=Noctis] rotated as @p[tag=Noctis] rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s kits.timer matches 5 run function kits:noctis/warpstrikes/oracleimageparticles
#execute if score @s kits.timer matches 1 run scoreboard players set @s kits.timer2 15
#scoreboard players operation @s[scores={kits.timer=1..}] kits.timer3 = @s kits.timer
#scoreboard players operation @s[scores={kits.timer=1..}] kits.timer3 %= @s kits.timer2
#execute if score @s kits.timer3 matches 0 run function kits:noctis/warpstrikes/oracleimageparticles

execute positioned ~ ~1 ~ as @e[distance=..1.5,type=!#kits:non_entity,tag=!Invincible,tag=!Noctis,tag=!InLabyrinth] at @s run function kits:noctis/warpstrikes/oraclestun

execute if score @s kits.timer matches 29.. run scoreboard players reset @e[scores={NoctisStun=1..}] NoctisStun
