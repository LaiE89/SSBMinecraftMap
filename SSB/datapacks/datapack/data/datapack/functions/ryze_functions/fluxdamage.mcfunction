scoreboard players reset @s RyzeFluxTimer
function datapack:damage2
execute if entity @e[tag=RyzeFlux,distance=..10,nbt=!{HurtTime:10s}] unless entity @e[type=armor_stand,tag=overloadspread] run summon armor_stand ~ ~ ~ {Tags:["overloadspread"],NoGravity:1b,Marker:1b,Invisible:1,DisabledSlots:2096896,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:light_blue_glazed_terracotta",Damage:3,Count:1b}]}
particle minecraft:bubble_pop ~ ~ ~ 0.5 1 0.5 0 100
playsound minecraft:entity.dragon_fireball.explode neutral @a[distance=..15] ~ ~ ~ 2 1.5 1
tag @s remove RyzeFlux
