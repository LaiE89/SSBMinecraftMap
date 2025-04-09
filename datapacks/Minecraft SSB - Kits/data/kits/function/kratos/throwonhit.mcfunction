execute at @s run playsound minecraft:item.trident.throw neutral @a[distance=..15] ~ ~ ~ 2 0.75 1
execute at @s run playsound minecraft:entity.witch.throw neutral @a[distance=..15] ~ ~ ~ 2 0.5 1
execute at @s run playsound minecraft:block.chain.break neutral @a[distance=..15] ~ ~ ~ 10 0.8 1
scoreboard players set @s kits.ability2CD 0
execute at @s run summon armor_stand ~ ~1 ~ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["kratoshook","projectile"],Pose:{Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[-50f,0f,180f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],Head:[0f,0f,0f]},DisabledSlots:2039583,equipment:{mainhand:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{"minecraft:custom_model_data":{floats:[I;91]}}}}}
execute at @s run tp @e[type=armor_stand,tag=kratoshook,sort=nearest,limit=1] @s
