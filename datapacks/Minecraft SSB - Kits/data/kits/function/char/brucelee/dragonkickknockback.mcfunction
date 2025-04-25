tag @s add BruceDragonKicked
damage @s 6 bypass:player_attack by @p[tag=Brucelee]
effect give @s minecraft:levitation 1 0 true
playsound minecraft:entity.ender_dragon.shoot neutral @a[distance=..50] ~ ~ ~ 2 1 1
scoreboard players set @p[tag=Brucelee] kits.raycastTick2 0
execute as @p[tag=Brucelee] at @s positioned ~ ~ ~ run function kits:char/brucelee/bruceleepassive3
