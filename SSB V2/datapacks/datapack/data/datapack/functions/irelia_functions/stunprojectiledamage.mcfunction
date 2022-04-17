function datapack:damage1
playsound minecraft:entity.arrow.hit_player neutral @a[distance=..30] ~ ~ ~ 3 0 1
effect give @s minecraft:slowness 1 9 true
scoreboard players add @p[tag=Irelia] Timer3 1
tag @s[tag=IreliaMarked,tag=!IreliaMarked2] add IreliaMarked2
tag @s[tag=IreliaMarked,tag=IreliaMarked2] remove IreliaMarked
tag @s[tag=!IreliaMarked,tag=!IreliaMarked2] add IreliaMarked
tag @s add IreliaHitByDuet