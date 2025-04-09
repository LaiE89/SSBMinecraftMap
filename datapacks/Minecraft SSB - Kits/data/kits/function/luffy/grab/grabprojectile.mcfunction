tp @s[scores={kits.timer=0..20}] ^ ^ ^1.2
execute if entity @p[tag=Luffy] at @s[scores={kits.timer=21..}] facing entity @p[tag=Luffy] feet run tp @s ^ ^ ^1.2

execute as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Luffy,tag=!InLabyrinth,tag=!LuffyGrabbed] at @s run function kits:luffy/grab/grab

scoreboard players add @s kits.timer 1
execute at @s run tp @e[tag=LuffyGrabbed] ~ ~0.5 ~

execute at @s[scores={kits.timer=21..}] if entity @p[tag=Luffy,distance=..2] run function kits:luffy/grab/grabback

#execute at @s positioned ~ ~1.75 ~ run function kits:luffy/grab/grabparticles

execute if entity @p[tag=Luffy] as @e[type=area_effect_cloud,tag=LuffyGrab] at @s positioned ~ ~0.75 ~ facing entity @p[tag=Luffy] feet run function kits:luffy/arm/particles
