summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["NessYoyo","projectile"],DisabledSlots:2039583,equipment:{head:{id:"minecraft:nautilus_shell",Damage:4,Count:1b}}}
tp @e[type=armor_stand,tag=NessYoyo] @s
playsound minecraft:entity.player.attack.sweep neutral @a[distance=..10] ~ ~ ~ 5 2 1
scoreboard players set @s kits.ability1CD 0
