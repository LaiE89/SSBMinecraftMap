summon armor_stand ~ ~ ~1 {Tags:["summonedswords","projectile"],NoGravity:1b,Invisible:1,Invulnerable:1,NoBasePlate:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Enchantments:[{id:unbreaking,lvl:1}]}}],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[180f,0f,90f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]}}
summon armor_stand ~-1.25 ~ ~-1 {Tags:["summonedswords","projectile"],NoGravity:1b,Invisible:1,Invulnerable:1,NoBasePlate:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Enchantments:[{id:unbreaking,lvl:1}]}}],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[180f,0f,90f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]}}
summon armor_stand ~1.25 ~ ~-1 {Tags:["summonedswords","projectile"],NoGravity:1b,Invisible:1,Invulnerable:1,NoBasePlate:1,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Enchantments:[{id:unbreaking,lvl:1}]}}],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[180f,0f,90f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]}}
particle minecraft:flash
playsound minecraft:item.trident.thunder neutral @a[distance=..25] ~ ~ ~ 2 1.5 1
tag @s add VergilDash
scoreboard players set @s Ability3CD 0