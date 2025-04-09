particle glow_squid_ink ~ ~1 ~ 0 0 0 0 1 force
execute at @s facing entity @p[tag=Cynthia] feet run tp @s ^ ^0.15 ^0.7
execute if entity @p[tag=Cynthia,distance=..2] run effect give @p[tag=Cynthia,tag=!Roserade] minecraft:regeneration 1 2 true
execute if entity @p[tag=Cynthia,distance=..2] run effect give @p[tag=Cynthia,tag=Roserade] minecraft:regeneration 1 3 true
execute if entity @p[tag=Cynthia,distance=..2] run particle minecraft:composter ~ ~1 ~ 0.4 0.4 0.4 0 25
execute if entity @p[tag=Cynthia,distance=..2] run playsound minecraft:entity.player.levelup neutral @a[distance=..20] ~ ~ ~ 10 2 1
execute if entity @p[tag=Cynthia,distance=..2] run kill @s
