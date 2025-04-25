scoreboard players add @s kits.timer 1
#particle minecraft:firework ^2 ^1.4 ^0.5 0 0 0 0 3

execute if entity @s[tag=2bswordprojectile] if entity @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!2B,tag=!InLabyrinth] run scoreboard players set @s kits.timer 5
execute if entity @s[scores={kits.timer=9}] as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!2B,tag=!InLabyrinth] at @s run function kits:char/2b/throwsworddamage
execute if entity @s[scores={kits.timer=16}] as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!2B,tag=!InLabyrinth] at @s run function kits:char/2b/throwsworddamage
execute if entity @s[scores={kits.timer=23}] as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!2B,tag=!InLabyrinth] at @s run function kits:char/2b/throwsworddamage

scoreboard players set @s[tag=2bswordprojectile] kits.raycastTick2 0
execute as @s[tag=2bswordprojectile] positioned ~ ~1.5 ~ run function kits:char/2b/2bpassive2
tp @s[tag=2bswordprojectile] ^ ^ ^1
tag @s[scores={kits.timer=5..},tag=2bswordprojectile] remove 2bswordprojectile
execute as @s[tag=!2bswordprojectile] unless entity @e[type=area_effect_cloud,tag=2bsworddirec] run function kits:char/2b/throwsworddirec
tp @s[scores={kits.timer=6..9}] ~ ~ ~ ~50 ~
execute as @s[scores={kits.timer=9}] run playsound minecraft:entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 2 1.5 1
tp @s[scores={kits.timer=10..15}] ~ ~ ~ ~-45 ~
execute as @s[scores={kits.timer=16}] run playsound minecraft:entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 2 1.5 1
tp @s[scores={kits.timer=16..23}] ~ ~ ~ ~50 ~
execute as @s[scores={kits.timer=23}] run playsound minecraft:entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 2 1.5 1
execute at @p[tag=2B] as @s[scores={kits.timer=24..}] at @s facing entity @p[tag=2B] feet run teleport @s ^ ^ ^1.5
execute as @s[scores={kits.timer=30..}] if entity @p[tag=2B,distance=..0.75] run kill @s
kill @s[scores={kits.timer=40..}]
