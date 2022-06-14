tag @s add VergilJudgementCut
execute at @s rotated ~ 0 run summon armor_stand ^ ^ ^3 {Tags:["judgementcutmiddle"],NoGravity:1b,Marker:1b,Invisible:1,Invulnerable:1,NoBasePlate:1}
effect give @s minecraft:resistance 2 2 true
effect give @s minecraft:weakness 2 9 true
effect give @s minecraft:slowness 2 9 true
effect give @s minecraft:glowing 2 9 true
playsound minecraft:entity.evoker.prepare_attack neutral @a[distance=..30] ~ ~ ~ 3 2 1
scoreboard players set @s Ability1CD 0