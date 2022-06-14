effect give @s minecraft:speed 1 5 true
summon area_effect_cloud ~ ~ ~ {Tags:["cinderbeyblade"],Duration:13}
tp @s ~ ~ ~ facing entity @p
tp @e[type=minecraft:area_effect_cloud,tag=cinderbeyblade,limit=1,sort=nearest] ~ ~ ~ facing ^3 ^ ^
playsound minecraft:entity.ender_dragon.shoot neutral @a[distance=..30] ~ ~ ~ 2 0 1

scoreboard players reset @s[scores={Ability1CD=400..}] Ability1CD