damage @s 6 bypass:player_attack by @p[tag=Ekko]
effect give @s[type=!minecraft:player] minecraft:weakness 1 9 true
scoreboard players add @s[tag=!EkkoPassiveCD] kits.specific.ekkoResonance 1
playsound minecraft:entity.arrow.hit_player neutral @a[distance=..20] ~ ~ ~ 2 0 1
playsound minecraft:entity.player.attack.sweep neutral @a[distance=..30] ~ ~ ~ 3 1 1
execute at @p[tag=Ekko] run particle minecraft:sweep_attack ^ ^1 ^1 0 0 0 0 1 force
particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~1 ~ 0.4 0.4 0.4 0 100 force
tag @p[tag=Ekko] remove EkkoDiving
scoreboard players reset @p[tag=Ekko] kits.timer