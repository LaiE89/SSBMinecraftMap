execute if entity @e[distance=..50,type=!#kits:non_entity,tag=!Invincible,tag=!Brucelee,tag=!InLabyrinth] at @e[type=area_effect_cloud,tag=BruceMarker,distance=..10,sort=nearest,limit=1] run tp @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,type=!#kits:non_entity,tag=!Invincible,tag=!Brucelee,tag=!InLabyrinth]
execute unless entity @e[distance=..50,type=!#kits:non_entity,tag=!Invincible,tag=!Brucelee,tag=!InLabyrinth] at @e[type=area_effect_cloud,tag=BruceMarker,distance=..10,sort=nearest,limit=1] run tp @s ~ ~ ~
tag @s add BruceIronWill
effect give @s minecraft:absorption 2 1 true
playsound minecraft:entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 10 0 1
scoreboard players set @s kits.ability2CD 0
