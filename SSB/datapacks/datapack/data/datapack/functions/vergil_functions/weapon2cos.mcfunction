execute at @s rotated ~ 0 run summon armor_stand ^ ^ ^1 {Tags:["forceedge"],NoGravity:1b,Marker:1b,DisabledSlots:2039583,Invisible:1,Invulnerable:1,NoBasePlate:1,HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:37}},{}],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[90f,0f,90f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]}}
playsound minecraft:entity.ghast.shoot neutral @a[distance=..50] ~ ~ ~ 3 0.8 1
particle minecraft:sweep_attack ^ ^1.5 ^2 0 0 0 0 1
scoreboard players set @s Ability2CD 0