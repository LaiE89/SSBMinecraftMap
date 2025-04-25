scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run summon armor_stand ^ ^ ^-1 {Invulnerable:1b,Small:1b,Invisible:1b,Tags:["realmwarp2"]}
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
execute as @s[scores={kits.raycastTick=50}] positioned ^ ^ ^ run scoreboard players set @s kits.raycastTick2 0
execute as @s[scores={kits.raycastTick=50}] positioned ^ ^ ^ run function kits:char/ryze/ryzepassive5
execute as @s[scores={kits.raycastTick=..49}] positioned ^ ^ ^0.5 run function kits:char/ryze/ryzepassive2
