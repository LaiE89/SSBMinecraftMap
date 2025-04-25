scoreboard players add @s kits.raycastTick 1
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick 2222

particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~1 ~ 0.1 0.1 0.1 0 25 force
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run tp @s ~ ~1 ~
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run particle cloud ~ ~0.5 ~ 0 0 0 0.2 100 force
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~0.5 ~ 1 0 1 0 500 force
execute as @s[scores={kits.raycastTick=2222..}] positioned ^ ^ ^ run playsound minecraft:entity.zombie.attack_iron_door neutral @a[distance=..20] ~ ~ ~ 2 0.75 1

execute as @s[scores={kits.raycastTick=..1111}] positioned ~ ~-0.5 ~ run function kits:char/raiden/raidenpassive3
