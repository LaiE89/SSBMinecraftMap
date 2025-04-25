summon armor_stand ^ ^ ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["EkkoTimeWinder","projectile"],equipment:{head:{id:"minecraft:light_blue_carpet",Damage:4,Count:1b}}}
tp @e[type=armor_stand,tag=EkkoTimeWinder] @s
playsound minecraft:block.end_portal_frame.fill neutral @a[distance=..30] ~ ~ ~ 2 2 1
scoreboard players set @s kits.ability1CD 0
