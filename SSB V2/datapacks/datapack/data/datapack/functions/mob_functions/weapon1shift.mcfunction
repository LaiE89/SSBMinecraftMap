function datapack:damage1
effect give @s minecraft:glowing 1 0 true
#tp @s ~ ~ ~ facing entity @p[tag=Mob]
scoreboard players set @s RaycastTimer 0
execute at @s facing entity @p[tag=Mob] feet positioned ~ ~1.5 ~ run function datapack:mob_functions/mobpassive4
execute at @p[tag=Mob] run playsound minecraft:entity.evoker.prepare_attack neutral @a[distance=..30] ~ ~ ~ 3 2 1
execute at @p[tag=Mob] run particle minecraft:flash ~ ~ ~ 0 0 0 0 3
scoreboard players set @p[tag=Mob] Ability1CD 0