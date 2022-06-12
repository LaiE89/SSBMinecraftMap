scoreboard players add @p[tag=Irelia] Timer3 1
playsound minecraft:block.glass.break neutral @a[distance=..30] ~ ~ ~ 10 0 1
function datapack:damage1
effect give @s slowness 3 1 true
tag @s[tag=IreliaMarked,tag=!IreliaMarked2] add IreliaMarked2
tag @s[tag=IreliaMarked,tag=IreliaMarked2] remove IreliaMarked
tag @s[tag=!IreliaMarked,tag=!IreliaMarked2] add IreliaMarked
execute as @e[type=armor_stand,tag=IreliaVanguardProjectile] at @s run summon armor_stand ^-2 ^1 ^-5 {Tags:["IreliaUltSwords"],DisabledSlots:2096896,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:iron_sword",Count:1b}],ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{},{id:"diamond_sword",Count:1b}],Pose:{LeftArm:[82f,0f,0f]}}
execute as @e[type=armor_stand,tag=IreliaVanguardProjectile] at @s run summon armor_stand ^2 ^1 ^-5 {Tags:["IreliaUltSwords"],DisabledSlots:2096896,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:iron_sword",Count:1b}],ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{},{id:"diamond_sword",Count:1b}],Pose:{LeftArm:[82f,0f,0f]}}
execute as @e[type=armor_stand,tag=IreliaVanguardProjectile] at @s run summon armor_stand ^ ^1 ^-10 {Tags:["IreliaUltSwords"],DisabledSlots:2096896,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:iron_sword",Count:1b}],ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{},{id:"diamond_sword",Count:1b}],Pose:{LeftArm:[82f,0f,0f]}}
execute as @e[type=armor_stand,tag=IreliaVanguardProjectile] at @s run summon armor_stand ^4 ^1 ^ {Tags:["IreliaUltSwords"],DisabledSlots:2096896,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:iron_sword",Count:1b}],ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{},{id:"diamond_sword",Count:1b}],Pose:{LeftArm:[82f,0f,0f]}}
execute as @e[type=armor_stand,tag=IreliaVanguardProjectile] at @s run summon armor_stand ^-4 ^1 ^ {Tags:["IreliaUltSwords"],DisabledSlots:2096896,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:iron_sword",Count:1b}],ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{},{id:"diamond_sword",Count:1b}],Pose:{LeftArm:[82f,0f,0f]}}
execute as @e[type=armor_stand,tag=IreliaVanguardProjectile] at @s run kill @s
