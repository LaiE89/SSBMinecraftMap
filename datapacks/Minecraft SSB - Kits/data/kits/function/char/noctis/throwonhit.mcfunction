execute at @s run playsound minecraft:entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 5 0.75 1
execute at @s run playsound minecraft:entity.witch.throw neutral @a[distance=..15] ~ ~ ~ 2 0.75 1
execute at @s positioned ~ ~1.5 ~ run particle sweep_attack ^ ^ ^1.5 0 0 0 0 1 force

tag @s add NoctisThrow

execute at @s[predicate=kits:items/noctis/wise] rotated ~ 0 run summon armor_stand ^ ^-2 ^ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["NoctisWise","NoctisThrownWeapon","launch"],Pose:{Head:[1f,0f,0f]},DisabledSlots:4144959,equipment:{head:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{"minecraft:custom_model_data":{floats:[I;102]}}}}}
execute at @s[predicate=kits:items/noctis/tall] rotated ~ 0 run summon armor_stand ^ ^-2 ^ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["NoctisTall","NoctisThrownWeapon","launch"],Pose:{Head:[1f,0f,0f]},DisabledSlots:4144959,equipment:{head:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{"minecraft:custom_model_data":{floats:[I;101]}}}}}
execute at @s[predicate=kits:items/noctis/oracle] rotated ~ 0 run summon armor_stand ^ ^-2 ^ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["NoctisOracle","NoctisThrownWeapon","launch"],Pose:{Head:[1f,0f,0f]},DisabledSlots:4144959,equipment:{head:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{"minecraft:custom_model_data":{floats:[I;100]}}}}}

execute at @s run data modify entity @e[type=armor_stand,tag=NoctisThrownWeapon,sort=nearest,limit=1] Rotation set from entity @s Rotation
execute at @s run data modify entity @e[type=armor_stand,tag=NoctisThrownWeapon,sort=nearest,limit=1] Pose.Head[0] set from entity @s Rotation[1]
execute as @e[type=armor_stand,tag=NoctisThrownWeapon,sort=nearest,limit=1] at @s rotated ~ 0 run tp @s ^ ^2.5 ^
#execute at @s rotated ~ 0 positioned ^ ^-50 ^ run execute as @e[type=armor_stand,tag=NoctisThrownWeapon,sort=nearest,limit=1] at @s rotated ~ 0 run tp @s ^ ^50.5 ^
#schedule function kits:char/noctis/throw 1t replace
function kits:char/noctis/throw
scoreboard players set @s kits.ability1CD 0
