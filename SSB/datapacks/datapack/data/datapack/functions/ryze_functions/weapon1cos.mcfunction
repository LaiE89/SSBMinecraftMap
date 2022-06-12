summon armor_stand ^ ^ ^1 {Tags:["overload","projectile"],NoGravity:1b,Marker:1b,Invisible:1,DisabledSlots:2096896,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:light_blue_glazed_terracotta",Damage:3,Count:1b}]}
playsound minecraft:entity.evoker.cast_spell neutral @a[distance=..15] ~ ~ ~ 2 0.5 1
effect give @s[scores={Timer3=2..}] minecraft:absorption 2 1 true
effect give @s[scores={Timer3=2..}] minecraft:speed 2 2 true
execute at @s[scores={Timer3=2..}] run particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 0.1 100
execute at @s[scores={Timer3=2..}] run playsound minecraft:block.beacon.activate neutral @a[distance=..20] ~ ~ ~ 2 2 1
scoreboard players reset @s Timer3
scoreboard players set @s Ability1CD 0