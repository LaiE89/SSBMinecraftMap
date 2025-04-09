summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["KilluaYoyo","projectile"],equipment:{head:{id:"minecraft:nautilus_shell",Damage:4,Count:1b}}}
tp @e[type=armor_stand,tag=KilluaYoyo] @s
playsound minecraft:entity.player.attack.sweep neutral @a[distance=..10] ~ ~ ~ 5 1.75 1
scoreboard players set @s kits.ability2CD 0
