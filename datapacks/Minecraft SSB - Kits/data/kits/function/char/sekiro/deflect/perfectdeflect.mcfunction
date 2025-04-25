playsound minecraft:block.anvil.place neutral @a[distance=..30] ~ ~ ~ 10 1.5 1
particle minecraft:flash ^ ^1 ^1 0 0 0 0 1 force

kill @e[tag=projectile,distance=..3]

execute on attacker run function kits:char/sekiro/posture/posturegain {Posture:20}
execute on attacker run effect give @s[type=!minecraft:player] minecraft:weakness 1 9 true

#item modify entity @s[tag=Sekiro,predicate=kits:items/sekiro/kusabimaru_norm] weapon.mainhand kits:character_specific/sekiro_anim
execute at @s run function kits:generic/utility/edit_item/modify/run {item:'{id:"minecraft:iron_sword",components:{"minecraft:custom_name":{"text":"Kusabimaru","italic":false,"color":"gold"}}}',newModifier:'"kits:character_specific/sekiro_anim"'}
schedule function kits:char/sekiro/deflect/resetanim 10t replace

scoreboard players reset @s kits.timer
scoreboard players operation @s[tag=!SekiroPostureBroken] kits.criterion.block /= @s kits.timer2
scoreboard players operation @s[tag=!SekiroPostureBroken] kits.specific.sekiroPosture += @s kits.criterion.block
scoreboard players set @s[scores={kits.specific.sekiroPosture=101..}] kits.specific.sekiroPosture 100
scoreboard players set @s kits.specific.sekiroPostureTimer 30
