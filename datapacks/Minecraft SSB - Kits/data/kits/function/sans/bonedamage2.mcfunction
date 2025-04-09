execute store result score @s kits.timer run data get entity @s Age
tp @s[scores={kits.timer=..5}] ~ ~0.25 ~
execute at @s[scores={kits.timer=5..}] positioned ~ ~-1 ~ as @e[distance=..4,type=!#kits:non_entity,tag=!Invincible,tag=!Sans,tag=!InLabyrinth] at @s run function kits:sans/bluebones
execute at @s positioned ^3 ^-1 ^3 run function kits:sans/boneparticles2
execute at @s positioned ^-3 ^-1 ^-3 run function kits:sans/boneparticles2
execute at @s positioned ^3 ^-1 ^-3 run function kits:sans/boneparticles2
execute at @s positioned ^-3 ^-1 ^3 run function kits:sans/boneparticles2

execute at @s positioned ^2.5 ^-1 ^ run function kits:sans/boneparticles2
execute at @s positioned ^-2.5 ^-1 ^ run function kits:sans/boneparticles2
execute at @s positioned ^ ^-1 ^2.5 run function kits:sans/boneparticles2
execute at @s positioned ^ ^-1 ^-2.5 run function kits:sans/boneparticles2

execute at @s positioned ^1 ^-1 ^1 run function kits:sans/boneparticles2
execute at @s positioned ^-1 ^-1 ^-1 run function kits:sans/boneparticles2
execute at @s positioned ^-1 ^-1 ^1 run function kits:sans/boneparticles2
execute at @s positioned ^1 ^-1 ^-1 run function kits:sans/boneparticles2

execute at @s positioned ^ ^-1 ^ run function kits:sans/boneparticles2

execute if entity @s[scores={kits.timer=79..}] run tag @e remove SansBlueBonesDamaged
execute if entity @s[scores={kits.timer=79..}] run tag @e remove SansStationary
