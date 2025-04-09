execute store result score @s kits.timer run data get entity @s Age

execute if score @s kits.timer matches 0 rotated ~ 0 run function kits:noctis/weapons/summonweapons
execute if score @s kits.timer matches 0 if entity @p[tag=Noctis,predicate=kits:items/noctis/wise] at @s rotated as @p[tag=Noctis] rotated ~-20 0 run tp @s ~ ~ ~ ~ ~
execute if score @s kits.timer matches 0 if entity @p[tag=Noctis,predicate=kits:items/noctis/tall] at @s rotated as @p[tag=Noctis] rotated ~-140 0 run tp @s ~ ~ ~ ~ ~
execute if score @s kits.timer matches 0 if entity @p[tag=Noctis,predicate=kits:items/noctis/oracle] at @s rotated as @p[tag=Noctis] rotated ~-260 0 run tp @s ~ ~ ~ ~ ~
#execute if score @s kits.timer matches 2 run tp @s ~ ~50 ~ ~ ~
execute if score @s kits.timer matches 1.. positioned as @p[tag=Noctis] run tp @s ~ ~ ~ ~2 ~
execute if score @s kits.timer matches 1 positioned as @p[tag=Noctis] run particle flash ~ ~ ~ 0 0 0 0 1 force

#execute if entity @s[scores={kits.timer=1..}] as @e[type=armor_stand,tag=NoctisSelectTall] facing entity @e[type=area_effect_cloud,tag=NoctisWeaponCenter] feet rotated ~180 0 positioned as @e[type=area_effect_cloud,tag=NoctisWeaponCenter,limit=1] run tp @s ^ ^0.5 ^1.5 ~ ~
#execute if entity @s[scores={kits.timer=1..}] as @e[type=armor_stand,tag=NoctisSelectWise] facing entity @e[type=area_effect_cloud,tag=NoctisWeaponCenter] feet rotated ~180 0 positioned as @e[type=area_effect_cloud,tag=NoctisWeaponCenter,limit=1] run tp @s ^1.3 ^0.5 ^-0.75 ~ ~
#execute if entity @s[scores={kits.timer=1..}] as @e[type=armor_stand,tag=NoctisSelectOracle] facing entity @e[type=area_effect_cloud,tag=NoctisWeaponCenter] feet rotated ~180 0 positioned as @e[type=area_effect_cloud,tag=NoctisWeaponCenter,limit=1] run tp @s ^-1.3 ^0.5 ^-0.75 ~ ~

execute at @s[scores={kits.timer=1..}] rotated ~ 0 run tp @e[type=armor_stand,tag=NoctisSelectTall] ^ ^0.5 ^1.5 facing entity @s
execute at @s[scores={kits.timer=1..}] rotated ~ 0 run tp @e[type=armor_stand,tag=NoctisSelectWise] ^1.3 ^0.5 ^-0.75 facing entity @s
execute at @s[scores={kits.timer=1..}] rotated ~ 0 run tp @e[type=armor_stand,tag=NoctisSelectOracle] ^-1.3 ^0.5 ^-0.75 facing entity @s

execute if score @s kits.timer matches 299.. rotated ~ 0 run kill @e[type=armor_stand,tag=NoctisSelectWeapon]
