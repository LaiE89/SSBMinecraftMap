execute at @p[tag=Kiryu] run particle sweep_attack ^ ^1.5 ^0.5 0 0 0 0 1 force
tag @p[tag=Kiryu] remove KiryuTigerDrop
scoreboard players reset @p[tag=Kiryu] kits.timer5
particle crit ~ ~1 ~ 0 0 0 0.5 50 force
particle minecraft:gust ~ ~1 ~ 0 0 0 0 1 force
playsound minecraft:entity.player.attack.strong neutral @a[distance=..20] ~ ~ ~ 2 0 1
playsound minecraft:entity.player.attack.crit neutral @a[distance=..20] ~ ~ ~ 2 0 1
damage @s 6 bypass:player_attack by @p[tag=Kiryu]
effect give @s minecraft:slowness 1 4 true