scoreboard players add @s RaycastTimer 1

execute unless block ~ ~ ~ air run scoreboard players set @s RaycastTimer 2222
execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^1 ^-1 run summon armor_stand ^ ^ ^ {Tags:["AbianHydra"],ShowArms:1,Invisible:1,Invulnerable:1,NoBasePlate:1,ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1,display:{color:0}}},{id:"minecraft:dragon_head",Count:1b}],HandItems:[{id:"minecraft:dragon_head",Count:1b},{id:"minecraft:dragon_head",Count:1b}],Pose:{Body:[35f,0f,0f],LeftArm:[270f,340f,0f],RightArm:[270f,20f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:2039583}
execute as @s[scores={RaycastTimer=2222..}] positioned ^ ^1.5 ^-1 run particle dragon_breath ~ ~ ~ 0.5 0.5 0.5 1 20
execute as @s[scores={RaycastTimer=2222..}] run playsound minecraft:block.end_portal.spawn neutral @a[distance=..50] ~ ~ ~ 2 1 1
execute as @s[scores={RaycastTimer=2222..}] run tag @s add AbianCanSwap
execute as @s[scores={RaycastTimer=2222..}] run replaceitem entity @s weapon.mainhand carrot_on_a_stick{Unbreakable:1,AbianWeapon:1b,display:{Name:'[{"text":"Swap","italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Item Ability: | ","italic":false,"color":"gold"},{"text":"RIGHT CLICK","color":"yellow","bold":true},{"text":"","color":"dark_purple","bold":false}]','[{"text":"You swap locations with your Hydra","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:infinity,lvl:1}],HideFlags:33,CustomModelData:68}
execute as @s[scores={RaycastTimer=2222..}] run scoreboard players set @s Ability3CD 0

execute as @s[scores={RaycastTimer=..1111}] positioned ^ ^ ^0.5 run function datapack:abian_functions/abianpassive6