#summon armor_stand ^ ^ ^1.5 {Tags:["pkfire","projectile"],DisabledSlots:2039583,NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:light_weighted_pressure_plate",Damage:4,Count:1b}]}
summon area_effect_cloud ^ ^ ^1 {Tags:["pkfire","projectile"],Duration:10}
particle minecraft:lava ^ ^1 ^1 0 0 0 0 5
playsound minecraft:entity.ghast.shoot neutral @a[distance=..20] ~ ~ ~ 10 1 1
scoreboard players set @s Ability2CD 0