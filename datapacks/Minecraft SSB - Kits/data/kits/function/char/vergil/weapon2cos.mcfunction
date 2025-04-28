execute at @s rotated ~ 0 run summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["forceedge"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[90f,0f,90f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:2039583,equipment:{mainhand:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{custom_model_data:{floats:[I;38]}}}}}
playsound minecraft:entity.player.attack.sweep neutral @a[distance=..30] ~ ~ ~ 2 0 1
particle sweep_attack ^ ^1.5 ^2 0 0 0 0 1 force
tag @s add VergilDash
scoreboard players set @s kits.timer4 0
scoreboard players set @s kits.ability3CD 0
