summon armor_stand ^ ^ ^ {Tags:["Winder","projectile"],NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:light_blue_carpet",Damage:4,Count:1b}]}
tp @e[type=armor_stand,tag=Winder] @s
playsound minecraft:block.end_portal_frame.fill neutral @a[distance=..20] ~ ~ ~ 2 0.5 1
scoreboard players set @s Ability1CD 0