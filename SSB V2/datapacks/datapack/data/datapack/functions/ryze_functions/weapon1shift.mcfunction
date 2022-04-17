scoreboard players set @s RaycastTimer 0
execute as @s at @s positioned ~ ~1.5 ~ run function datapack:ryze_functions/ryzepassive2
playsound minecraft:entity.illusioner.prepare_mirror neutral @a[distance=..30] ~ ~ ~ 10 0.5 1
particle minecraft:instant_effect ~ ~2 ~ 0 4 0 0 100
summon armor_stand ~ ~ ~ {Tags:["realmwarp"],Small:1,Invisible:1,Invulnerable:1}
scoreboard players set @s Ability4CD 0