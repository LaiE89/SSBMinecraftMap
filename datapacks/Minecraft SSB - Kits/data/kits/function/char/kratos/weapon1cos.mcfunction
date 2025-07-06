schedule clear kits:char/kratos/slashend

execute if entity @s[tag=KratosRage] run function kits:char/kratos/spartanrageend

execute if entity @s[scores={kits.timer=0}] rotated ~ 0 run summon armor_stand ^ ^ ^-1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["kratosblade","kratosslash1","kratosright"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[180f,180f,90f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:2039583,equipment:{mainhand:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{"minecraft:custom_model_data":{floats:[I;91]}}}}}
execute if entity @s[scores={kits.timer=0}] rotated ~ 0 run summon armor_stand ^ ^ ^-1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["kratosblade","kratosslash1","kratosleft"],Pose:{Body:[0f,0f,0f],LeftArm:[360f,0f,90f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:2039583,equipment:{offhand:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{"minecraft:custom_model_data":{floats:[I;91]}}}}}
execute if entity @s[scores={kits.timer=0}] run playsound minecraft:block.chain.place neutral @a[distance=..20] ~ ~ ~ 5 0.75 1
execute if entity @s[scores={kits.timer=0}] run playsound minecraft:entity.player.attack.knockback neutral @a[distance=..20] ~ ~ ~ 5 0 1

execute if entity @s[scores={kits.timer=1}] rotated ~ 0 run summon armor_stand ^ ^ ^-1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["kratosblade","kratosslash4","kratosright"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[180f,180f,90f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:2039583,equipment:{mainhand:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{"minecraft:custom_model_data":{floats:[I;91]}}}}}
execute if entity @s[scores={kits.timer=1}] rotated ~ 0 run summon armor_stand ^ ^ ^-1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["kratosblade","kratosslash4","kratosleft"],Pose:{Body:[0f,0f,0f],LeftArm:[360f,0f,90f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:2039583,equipment:{offhand:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{"minecraft:custom_model_data":{floats:[I;91]}}}}}
execute if entity @s[scores={kits.timer=1}] run playsound minecraft:block.chain.place neutral @a[distance=..20] ~ ~ ~ 5 1 1
execute if entity @s[scores={kits.timer=1}] run playsound minecraft:entity.player.attack.strong neutral @a[distance=..20] ~ ~ ~ 5 0.5 1

execute if entity @s[scores={kits.timer=2}] rotated ~ 0 run summon armor_stand ^ ^ ^-1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["kratosblade","kratosslash2","kratosright"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[180f,180f,90f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:2039583,equipment:{mainhand:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{"minecraft:custom_model_data":{floats:[I;91]}}}}}
execute if entity @s[scores={kits.timer=2}] rotated ~ 0 run summon armor_stand ^ ^ ^-1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["kratosblade","kratosslash2","kratosleft"],Pose:{Body:[0f,0f,0f],LeftArm:[360f,0f,90f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:2039583,equipment:{offhand:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{"minecraft:custom_model_data":{floats:[I;91]}}}}}
execute if entity @s[scores={kits.timer=2}] run playsound minecraft:block.chain.place neutral @a[distance=..20] ~ ~ ~ 5 1 1
execute if entity @s[scores={kits.timer=2}] run playsound minecraft:entity.player.attack.strong neutral @a[distance=..20] ~ ~ ~ 5 0.5 1

execute if entity @s[scores={kits.timer=3}] rotated ~ 0 run summon armor_stand ^ ^ ^-1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["kratosblade","kratosslash3","kratosright"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[180f,180f,90f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:2039583,equipment:{mainhand:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{"minecraft:custom_model_data":{floats:[I;91]}}}}}
execute if entity @s[scores={kits.timer=3}] rotated ~ 0 run summon armor_stand ^ ^ ^-1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["kratosblade","kratosslash3","kratosleft"],Pose:{Body:[0f,0f,0f],LeftArm:[360f,0f,90f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:2039583,equipment:{offhand:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{"minecraft:custom_model_data":{floats:[I;91]}}}}}
execute if entity @s[scores={kits.timer=3}] run playsound minecraft:block.chain.place neutral @a[distance=..20] ~ ~ ~ 5 0.5 1
execute if entity @s[scores={kits.timer=3}] run playsound minecraft:entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 5 0 1

execute if entity @s[scores={kits.timer=4..}] rotated ~ 0 run summon armor_stand ^ ^ ^-1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["kratosblade","kratosslash5","kratosright"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[180f,180f,90f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:2039583,equipment:{mainhand:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{"minecraft:custom_model_data":{floats:[I;91]}}}}}
execute if entity @s[scores={kits.timer=4..}] rotated ~ 0 run summon armor_stand ^ ^ ^-1 {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["kratosblade","kratosslash5","kratosleft"],Pose:{Body:[0f,0f,0f],LeftArm:[360f,0f,90f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:2039583,equipment:{offhand:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{"minecraft:custom_model_data":{floats:[I;91]}}}}}
execute if entity @s[scores={kits.timer=4..}] run playsound minecraft:block.chain.place neutral @a[distance=..20] ~ ~ ~ 5 0.5 1
execute if entity @s[scores={kits.timer=4..}] run playsound minecraft:entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 5 0 1

tp @e[type=armor_stand,tag=kratosblade,sort=nearest,limit=2] @s
#execute as @e[type=armor_stand,tag=kratosblade,sort=nearest,limit=2] at @s rotated ~ 0 run tp @s ^ ^ ^-1
scoreboard players set @s kits.raycastTick 0
execute at @s rotated ~ 0 positioned ~ ~1.5 ~ run function kits:char/kratos/slashlocation

attribute @s minecraft:attack_speed modifier add attackspeed.slash.kratos -50 add_value
data modify entity @e[type=armor_stand,tag=kratosblade,tag=kratosleft,sort=nearest,limit=1] Rotation[1] set value 0f
data modify entity @e[type=armor_stand,tag=kratosblade,tag=kratosright,sort=nearest,limit=1] Rotation[1] set value 0f
execute at @s rotated ~ 0 run particle sweep_attack ^ ^1.5 ^2 0 0 0 0 1 force
scoreboard players set @s kits.ability1CD 0
