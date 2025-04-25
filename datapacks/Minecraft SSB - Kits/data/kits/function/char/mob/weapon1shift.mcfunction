damage @s 9 bypass:player_attack by @p[tag=Mob]
effect give @s minecraft:glowing 1 0 true
#tp @s ~ ~ ~ facing entity @p[tag=Mob]
scoreboard players set @s kits.raycastTick 0
execute at @s facing entity @p[tag=Mob] feet positioned ~ ~1.5 ~ run function kits:char/mob/mobpassive4
execute at @p[tag=Mob] run playsound minecraft:entity.evoker.prepare_attack neutral @a[distance=..30] ~ ~ ~ 3 2 1
execute at @p[tag=Mob] run particle flash ~ ~1 ~ 0 0 0 0 3 force
scoreboard players set @p[tag=Mob] kits.ability1CD 0
