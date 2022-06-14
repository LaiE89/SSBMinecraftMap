tag @s add NessPKFlash
scoreboard players reset @s Timer3
playsound minecraft:entity.evoker.prepare_attack neutral @a[distance=..30] ~ ~ ~ 2 2 1
particle minecraft:flash
summon armor_stand ~ ~ ~ {Tags:["PKFlashBomb"],NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:slime_block",Count:1b}]}
summon armor_stand ^ ^ ^15 {Tags:["PKFlashPlace"],Invisible:1,DisabledSlots:2039583,NoGravity:1b,Marker:1b,Invulnerable:1}
scoreboard players set @s Ability4CD 0