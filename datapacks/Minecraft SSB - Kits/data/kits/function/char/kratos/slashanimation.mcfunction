execute at @s positioned ~ ~1.75 ~ facing entity @p[tag=Kratos] eyes positioned ~ ~-0.5 ~ run function kits:char/kratos/slashchain
particle flame ~ ~1 ~ 0 0 0 0 1 force
#execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Kratos,tag=!InLabyrinth,tag=!KratosSlashed] at @s run function kits:char/kratos/slashdamage

execute at @s[tag=kratosslash1,tag=kratosright] facing entity @e[type=minecraft:area_effect_cloud,tag=kratosslashplace,limit=1,sort=nearest] eyes run tp @s ^-0.65 ^ ^0.7
execute at @s[tag=kratosslash1,tag=kratosleft] facing entity @e[type=minecraft:area_effect_cloud,tag=kratosslashplace,limit=1,sort=nearest] eyes run tp @s ^0.65 ^ ^0.7

execute at @s[tag=kratosslash2,tag=kratosright] facing entity @e[type=minecraft:area_effect_cloud,tag=kratosslashplace,limit=1,sort=nearest] eyes run tp @s ^0.8 ^0.45 ^0.75
execute at @s[tag=kratosslash2,tag=kratosleft] facing entity @e[type=minecraft:area_effect_cloud,tag=kratosslashplace,limit=1,sort=nearest] eyes run tp @s ^-0.8 ^0.45 ^0.75

execute at @s[tag=kratosslash3,tag=kratosright] facing entity @e[type=minecraft:area_effect_cloud,tag=kratosslashplace,limit=1,sort=nearest] eyes run tp @s ^1.25 ^-0.35 ^0.7
execute at @s[tag=kratosslash3,tag=kratosleft] facing entity @e[type=minecraft:area_effect_cloud,tag=kratosslashplace,limit=1,sort=nearest] eyes run tp @s ^0.8 ^-0.35 ^0.7

execute at @s[tag=kratosslash4,tag=kratosright] facing entity @e[type=minecraft:area_effect_cloud,tag=kratosslashplace,limit=1,sort=nearest] eyes run tp @s ^0.8 ^-0.35 ^0.75
execute at @s[tag=kratosslash4,tag=kratosleft] facing entity @e[type=minecraft:area_effect_cloud,tag=kratosslashplace,limit=1,sort=nearest] eyes run tp @s ^-0.8 ^-0.35 ^0.75

execute at @s[tag=kratosslash5,tag=kratosright] facing entity @e[type=minecraft:area_effect_cloud,tag=kratosslashplace,limit=1,sort=nearest] eyes run tp @s ^-0.8 ^-0.35 ^0.7
execute at @s[tag=kratosslash5,tag=kratosleft] facing entity @e[type=minecraft:area_effect_cloud,tag=kratosslashplace,limit=1,sort=nearest] eyes run tp @s ^-1.25 ^-0.35 ^0.7

execute if entity @e[type=minecraft:area_effect_cloud,tag=kratosslashplace,distance=..2] run schedule function kits:char/kratos/slashend 8t replace
execute if entity @e[type=minecraft:area_effect_cloud,tag=kratosslashplace,distance=..2] run kill @e[type=area_effect_cloud,tag=kratosslashplace]
execute unless entity @e[type=minecraft:area_effect_cloud,tag=kratosslashplace] run execute at @s facing entity @p[tag=Kratos] feet run function kits:char/kratos/slashanimationreturn

execute if entity @s[tag=kratosleft,tag=!kratosslash2,tag=!kratosslash4] unless entity @e[type=minecraft:area_effect_cloud,tag=kratosslashplace] if entity @p[tag=Kratos,distance=..2.75] run function kits:char/kratos/slashend
execute if entity @s[tag=kratosleft,tag=kratosslash2] unless entity @e[type=minecraft:area_effect_cloud,tag=kratosslashplace] if entity @p[tag=Kratos,distance=..4.5] run function kits:char/kratos/slashend
execute if entity @s[tag=kratosleft,tag=kratosslash4] unless entity @e[type=minecraft:area_effect_cloud,tag=kratosslashplace] if entity @p[tag=Kratos,distance=..4] run function kits:char/kratos/slashend
