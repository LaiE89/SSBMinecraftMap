scoreboard players add @s kits.raycastTick2 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute as @s[scores={kits.raycastTick2=2222..}] positioned ~ ~1 ~ run summon armor_stand ^ ^ ^ {Invulnerable:1b,Small:1b,Invisible:1b,Tags:["realmwarp2"]}
execute as @s[scores={kits.raycastTick2=2222..}] positioned ~ ~1 ~ run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
execute as @s[scores={kits.raycastTick2=..49}] positioned ~ ~-0.5 ~ run function kits:ryze/ryzepassive5
