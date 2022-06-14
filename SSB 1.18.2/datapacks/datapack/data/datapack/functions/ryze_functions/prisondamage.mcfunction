effect give @s minecraft:slowness 2 3 true
function datapack:damage1
particle minecraft:enchant ~ ~ ~ 0.4 1.5 0.4 0.0001 200
particle minecraft:nautilus ~ ~ ~ 0.4 1.5 0.4 0.0001 300
playsound minecraft:entity.illusioner.mirror_move neutral @a[distance=..15]
tag @s[tag=RyzeFlux] add RyzeInPrison
execute at @s[tag=RyzeInPrison] run summon armor_stand ~ ~-1.5 ~ {Tags:["RyzePrison"],Invisible:1,Invulnerable:1}
execute at @s[tag=RyzeInPrison] run tp @e[type=armor_stand,tag=RyzePrison] ~ ~-1.5 ~
execute at @s[tag=RyzeInPrison] run playsound minecraft:entity.wither.spawn neutral @a[distance=..15] ~ ~ ~ 2 1.5 1
tag @s[tag=RyzeInPrison] remove RyzeFlux