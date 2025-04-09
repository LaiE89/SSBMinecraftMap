execute store result score @s kits.timer run data get entity @s Age
tp @s[scores={kits.timer=..5}] ~ ~0.25 ~
execute at @s[scores={kits.timer=5}] positioned ~ ~-1 ~ as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Sans,tag=!InLabyrinth] at @s run function kits:sans/karma
execute at @s positioned ^2 ^-1 ^2 run function kits:sans/boneparticles
execute at @s positioned ^-2 ^-1 ^-2 run function kits:sans/boneparticles
execute at @s positioned ^2 ^-1 ^-2 run function kits:sans/boneparticles
execute at @s positioned ^-2 ^-1 ^2 run function kits:sans/boneparticles

execute at @s positioned ^1.7 ^-1 ^ run function kits:sans/boneparticles
execute at @s positioned ^-1.7 ^-1 ^ run function kits:sans/boneparticles
execute at @s positioned ^ ^-1 ^1.7 run function kits:sans/boneparticles
execute at @s positioned ^ ^-1 ^-1.7 run function kits:sans/boneparticles

execute at @s positioned ^0.9 ^-1 ^0.9 run function kits:sans/boneparticles
execute at @s positioned ^-0.9 ^-1 ^-0.9 run function kits:sans/boneparticles
execute at @s positioned ^-0.9 ^-1 ^0.9 run function kits:sans/boneparticles
execute at @s positioned ^0.9 ^-1 ^-0.9 run function kits:sans/boneparticles

execute at @s positioned ^ ^-1 ^ run function kits:sans/boneparticles
