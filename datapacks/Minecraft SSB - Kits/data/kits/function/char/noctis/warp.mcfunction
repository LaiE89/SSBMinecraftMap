execute as @p[tag=Noctis] at @s run function kits:char/noctis/warpeffects
tp @p[tag=Noctis] ~ ~ ~
execute if entity @e[type=area_effect_cloud,tag=NoctisPoint,distance=..3] run function kits:char/noctis/pointwarp
execute if entity @s[tag=NoctisWise] run execute as @p[tag=Noctis] at @s run function kits:char/noctis/warpstrikes/wise
execute if entity @s[tag=NoctisTall] run execute as @p[tag=Noctis] at @s run function kits:char/noctis/warpstrikes/tall
execute if entity @s[tag=NoctisOracle] run execute as @p[tag=Noctis] at @s run function kits:char/noctis/warpstrikes/oracle
