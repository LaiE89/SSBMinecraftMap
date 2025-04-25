particle minecraft:dust{color:[1.000,1.000,1.000],scale:0.35} ~ ~0.1 ~ 0 0 0 0 1 force
scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222
execute as @s[scores={kits.raycastTick=..15}] rotated ~ 0 positioned ^ ^ ^1 run function kits:char/luffy/pistol/destinationpreview
