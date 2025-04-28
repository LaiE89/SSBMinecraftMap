#playsound minecraft:block.anvil.place neutral @a[distance=..30] ~ ~ ~ 10 1.5 1
function kits:char/sekiro/deflect/sound
particle minecraft:flash ^ ^1 ^1 0 0 0 0 1 force

scoreboard players set @s kits.timer7 5
execute on attacker run function kits:char/sekiro/posture/posturegaindeflect
execute on attacker run effect give @s[type=!minecraft:player] minecraft:weakness 1 9 true

kill @e[tag=projectile,distance=..3]

execute at @s[predicate=!kits:items/sekiro/kusabimaru_alt] run function kits:generic/utility/edit_item/modify/run {item:'{id:"minecraft:iron_sword",components:{"minecraft:custom_name":{"text":"Kusabimaru","italic":false,"color":"gold"}}}',newModifier:'"kits:character_specific/sekiro_anim"'}
schedule function kits:char/sekiro/deflect/resetanim 7t replace

scoreboard players set @s[tag=!SekiroPostureBroken] kits.timer6 6
scoreboard players operation @s[tag=!SekiroPostureBroken] kits.criterion.block /= @s kits.timer6
scoreboard players operation @s[tag=!SekiroPostureBroken] kits.specific.sekiroPosture += @s kits.criterion.block
scoreboard players set @s[scores={kits.specific.sekiroPosture=101..}] kits.specific.sekiroPosture 100
scoreboard players set @s kits.specific.sekiroPostureTimer 30

# Making sure deflecting once then holding block would never cause 2+ deflects in a row
schedule clear kits:char/sekiro/deflect/deflectreset
scoreboard players set @s kits.timer 6
