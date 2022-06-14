scoreboard players reset @s RyzeFluxTimer
function datapack:damage2
#execute if entity @e[tag=RyzeFlux,distance=..10,nbt=!{HurtTime:10s}] unless entity @e[type=armor_stand,tag=overloadspread] run summon armor_stand ~ ~ ~ {Tags:["overloadspread"],NoGravity:1b,Marker:1b,Invisible:1,DisabledSlots:2096896,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:light_blue_glazed_terracotta",Damage:3,Count:1b}]}
execute if entity @e[tag=RyzeFlux,distance=..10,nbt=!{HurtTime:10s}] unless entity @e[type=area_effect_cloud,tag=overloadspread] run summon area_effect_cloud ~ ~ ~ {Tags:["overloadspread"],Duration:40} 
particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 1 100
particle minecraft:flash ~ ~1 ~ 0 0 0 0 0
playsound minecraft:entity.dragon_fireball.explode neutral @a[distance=..15] ~ ~ ~ 2 1.5 1
tag @s remove RyzeFlux
