function datapack:damage1
scoreboard players add @p[tag=Irelia] Timer3 1
particle minecraft:block minecraft:redstone_block ~ ~1 ~ 0.4 0.4 0.4 0 10
tag @p[tag=Irelia] remove IreliaBladesurging
scoreboard players reset @s[tag=IreliaMarked] IreliaMarkTimer
tag @s[tag=IreliaMarked] remove IreliaMarked
tag @s[tag=IreliaMarked2] add IreliaMarked
tag @s[tag=IreliaMarked2] remove IreliaMarked2
execute as @p[tag=Irelia] at @s run tp @s ~ ~ ~ facing entity @e[tag=IreliaBladesurge,limit=1,sort=nearest]
effect clear @p[tag=Irelia] resistance
tag @s remove IreliaBladesurge
kill @e[type=area_effect_cloud,tag=BladeSurgeDash]