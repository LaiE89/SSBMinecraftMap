execute at @a[tag=goddeatheffect,scores={Death=1..}] run playsound minecraft:ui.toast.challenge_complete neutral @a[distance=..20] ~ ~ ~ 3 2 1
execute at @a[tag=goddeatheffect,scores={Death=1..}] run execute positioned ~ ~ ~ run summon armor_stand ~ ~ ~ {Tags:["goddeatheffectstand","cosmetics"],DisabledSlots:2039583,Glowing:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{},{},{id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"white_concrete",Count:1b}],HandItems:[{},{}],Pose:{Head:[341f,0f,0f],LeftLeg:[0f,0f,344f],RightLeg:[0f,0f,16f],LeftArm:[0f,0f,200f],RightArm:[0f,0f,158f]}}
execute as @e[type=minecraft:armor_stand,tag=goddeatheffectstand] at @s run particle minecraft:falling_dust minecraft:coal_block ^ ^ ^2 0.1 0.1 0.1 0 10
execute as @e[type=minecraft:armor_stand,tag=goddeatheffectstand] at @s run tp @s ~ ~0.2 ~ ~35 ~-2
scoreboard players add @e[type=minecraft:armor_stand,tag=goddeatheffectstand] Timer 1
execute as @e[type=minecraft:armor_stand,tag=goddeatheffectstand,scores={Timer=36..}] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 50
execute as @e[type=minecraft:armor_stand,tag=goddeatheffectstand,scores={Timer=36..}] at @s run playsound minecraft:entity.lightning_bolt.impact neutral @a[distance=..30]
kill @e[type=minecraft:armor_stand,tag=goddeatheffectstand,scores={Timer=36..}]
