playsound minecraft:entity.player.big_fall neutral @a[distance=..30] ~ ~ ~ 10 0.75 1
execute if entity @s[tag=!Invincible,tag=!Edward,tag=!InLabyrinth] run damage @s 9 bypass:player_attack by @e[type=minecraft:block_display,tag=EdwardWall,limit=1,sort=nearest] from @p[tag=Edward]
scoreboard players set @s kits.raycastTick 0
execute at @s positioned ~ ~1.5 ~ run function kits:char/edward/wall/knockupraycast
effect give @s slow_falling 1 0 true
