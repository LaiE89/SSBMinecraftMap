particle minecraft:explosion ~ ~0.7 ~
playsound minecraft:block.end_portal.spawn neutral @a[distance=..20] ~ ~ ~ 0.5 2 0.5
function datapack:damage1
effect give @p[tag=Spawn] instant_health
kill @e[type=armor_stand,tag=lifestealbolt2,limit=1,sort=nearest]