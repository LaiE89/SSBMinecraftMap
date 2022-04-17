tag @s add BruceDragonKicked
function datapack:damage1
effect give @s minecraft:levitation 1 0 true
playsound minecraft:entity.ender_dragon.shoot neutral @a[distance=..50] ~ ~ ~ 2 1 1
execute at @p[tag=Brucelee] run particle minecraft:sweep_attack ^ ^1 ^2 0.5 0 0.5 0 10
scoreboard players set @p[tag=Brucelee] RaycastTimer2 0
execute as @p[tag=Brucelee] at @s positioned ~ ~1.5 ~ run function datapack:brucelee_functions/bruceleepassive3
scoreboard players set @p[tag=Brucelee] Ability5CD 0