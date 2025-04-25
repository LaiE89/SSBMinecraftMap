summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["2bsword","2bswordprojectile"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[-90f,0f,90f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:2039583,equipment:{mainhand:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{"minecraft:custom_model_data":{floats:[I;80]}}}}}
tp @e[type=armor_stand,tag=2bsword,sort=nearest,limit=1] @s
effect give @s minecraft:mining_fatigue 1 9 true
data modify entity @e[type=armor_stand,tag=2bsword,sort=nearest,limit=1] Rotation[1] set value 0f
playsound minecraft:entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 2 0.75 1
execute at @s rotated ~ 0 run particle minecraft:sweep_attack ^ ^1.5 ^2 0 0 0 0 1
scoreboard players set @s kits.ability1CD 0
