execute at @s rotated ~ 0 positioned ^-0.2 ^2.35 ^0.27 facing entity @p[tag=Kratos] eyes positioned ~ ~-0.5 ~ run function kits:char/kratos/slashchain
particle flame ^-0.2 ^1.85 ^0.27 0 0 0 0 1 force
execute unless entity @s[scores={kits.timer=2..},tag=!kratoshookpulling] as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Kratos,tag=!InLabyrinth,tag=!KratosHookDmg,limit=1,sort=nearest] at @s run function kits:char/kratos/hookdamage

execute if entity @s[tag=kratoshookpulling] run function kits:char/kratos/hookpullenemy

execute if entity @e[type=minecraft:area_effect_cloud,tag=kratoshookplace] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=kratoshookplace,limit=1,sort=nearest] feet run tp @s ^ ^ ^2
execute at @s if entity @e[type=minecraft:area_effect_cloud,tag=kratoshookplace,distance=..3] run execute positioned as @e[type=area_effect_cloud,tag=kratoshookplace,limit=1,sort=nearest] run tp @s ~ ~-1 ~
execute at @s if entity @e[type=minecraft:area_effect_cloud,tag=kratoshookplace,distance=..3] run scoreboard players add @s kits.timer 1
execute if entity @s[scores={kits.timer=3}] run playsound minecraft:item.trident.hit_ground neutral @a[distance=..50] ~ ~ ~ 5 0.8 1 
execute if entity @s[scores={kits.timer=3}] run particle minecraft:item{item:"minecraft:sand"} ~ ~2 ~ 0 0 0 0.1 50 force
execute if entity @s[scores={kits.timer=10}] run function kits:char/kratos/hookpull
effect give @p[tag=KratosPull] levitation 1 0 true
execute at @p[tag=KratosPull] facing entity @s eyes run tp @p[tag=KratosPull] ^ ^0.35 ^1.5
execute positioned ~ ~1 ~ if entity @p[tag=KratosPull,distance=..3] run function kits:char/kratos/hookend
