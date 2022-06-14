execute positioned ^ ^1.35 ^0.5 run kill @e[type=arrow,distance=..3,limit=1,sort=nearest]
execute positioned ^ ^1.35 ^1 run playsound minecraft:entity.shulker.shoot neutral @a[distance=..30] ~ ~ ~ 10 0 1
execute positioned ^ ^1.35 ^1 run summon armor_stand ~ ~ ~ {Tags:["AbianLifestealBuffed","AbianLifestealBuffed1"],Small:1,Invisible:1,NoGravity:1b,Marker:1b,Invulnerable:1,DisabledSlots:2039583}
execute positioned ^ ^1.35 ^1 run summon armor_stand ~ ~ ~ {Tags:["AbianLifestealBuffed","AbianLifestealBuffed2"],Small:1,Invisible:1,NoGravity:1b,Marker:1b,Invulnerable:1,DisabledSlots:2039583}
execute positioned ^ ^1.35 ^1 run summon armor_stand ~ ~ ~ {Tags:["AbianLifestealBuffed","AbianLifestealBuffed3"],Small:1,Invisible:1,NoGravity:1b,Marker:1b,Invulnerable:1,DisabledSlots:2039583}
tag @s remove AbianMaxAutism