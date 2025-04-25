#tp @s @e[type=area_effect_cloud,tag=chronobreak,sort=nearest,limit=1]
function kits:char/ekko/chronobreak/use
playsound minecraft:block.trial_spawner.ominous_activate neutral @a[distance=..50] ~ ~ ~ 3 2 1
scoreboard players set @s kits.timer3 0
scoreboard players set @s kits.ability4CD 0

