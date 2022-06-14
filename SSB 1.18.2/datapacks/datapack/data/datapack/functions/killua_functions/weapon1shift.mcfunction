summon armor_stand ~ ~ ~ {Tags:["KilluaYoyo","projectile"],NoGravity:1b,Marker:1b,Invisible:1,Small:1,Invulnerable:1,ArmorItems:[{},{},{},{id:"minecraft:nautilus_shell",Damage:4,Count:1b}]}
tp @e[type=armor_stand,tag=KilluaYoyo] @s
playsound minecraft:item.crossbow.quick_charge_3 neutral @a[distance=..10] ~ ~ ~ 10 0 1
scoreboard players set @s Ability2CD 0