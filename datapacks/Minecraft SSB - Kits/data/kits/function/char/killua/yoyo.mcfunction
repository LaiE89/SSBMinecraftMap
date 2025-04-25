scoreboard players add @s kits.timer 1
tp @s[scores={kits.timer=..14}] ^ ^ ^1

execute at @s[scores={kits.timer=..15}] positioned ~ ~1.3 ~ as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Killua,tag=!InLabyrinth] at @s run function kits:char/killua/yoyodamage

#execute as @e[type=armor_stand,tag=KilluaYoyo,scores={kits.timer=50}] at @s if entity @e[tag=!Killua,distance=..2,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] run function kits:char/killua/yoyoknockback

particle crit ~ ~1.3 ~ 0 0 0 0 1 force
execute if entity @p[tag=Killua,tag=KilluaGodspeed]

execute at @p[tag=Killua] run execute as @e[type=minecraft:armor_stand,tag=KilluaYoyo,scores={kits.timer=51..}] at @s facing entity @p[tag=Killua] feet run teleport @s ^ ^0.3 ^1.5
execute as @p[tag=Killua] at @s if entity @e[type=minecraft:armor_stand,tag=KilluaYoyo,scores={kits.timer=51..},distance=..1.5] run function kits:char/killua/yoyoretrieve

execute if entity @s[scores={kits.timer=16}] run playsound minecraft:entity.armor_stand.fall neutral @p[tag=Killua] ~ ~ ~ 10 0 1
kill @s[scores={kits.timer=16}]
