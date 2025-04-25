scoreboard players set @s kits.raycastTick 0
execute as @s at @s positioned ~ ~1.5 ~ run function kits:char/ryze/ryzepassive2
playsound minecraft:entity.illusioner.prepare_mirror neutral @a[distance=..30] ~ ~ ~ 10 0.5 1
particle instant_effect ~ ~2 ~ 0 4 0 0 100 force
summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:1b,Invisible:1b,Tags:["realmwarp"]}
scoreboard players add @s kits.timer2 15
scoreboard players set @s[scores={kits.timer2=31..}] kits.timer2 30
scoreboard players set @s kits.ability4CD 0
