particle minecraft:sweep_attack ^ ^1.3 ^2
playsound minecraft:entity.player.attack.sweep neutral @a[distance=..15] ~ ~ ~ 3 1.5 1
execute positioned ~ ~0.75 ~ run summon armor_stand ~ ~ ~ {Tags:["SitoeCardThrow","projectile"],Invisible:1b,Small:1b,NoGravity:1b,Marker:1b,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:55}}],Pose:{Head:[180f,0f,0f]}}
tp @e[type=armor_stand,tag=SitoeCardThrow] @s
tp @e[type=armor_stand,tag=SitoeCardThrow] ~ ~1 ~ 
scoreboard players set @s Ability1CD 0