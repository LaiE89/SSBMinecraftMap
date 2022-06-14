scoreboard players add @e[type=skeleton,tag=giantdad] Timer 1
scoreboard players add @e[type=skeleton,tag=giantdad] Timer2 1
execute as @e[type=skeleton,tag=giantdad,scores={Timer=100}] at @s run function datapack:labyrinth_functions/labyrinthmobabilities/prison/giantdadroll
execute as @e[type=skeleton,tag=giantdad,scores={Timer=110}] at @s rotated ~ 0 run function datapack:labyrinth_functions/labyrinthmobabilities/prison/giantdadcleave
execute as @e[type=skeleton,tag=giantdad,scores={Timer=200}] at @s run function datapack:labyrinth_functions/labyrinthmobabilities/prison/giantdadroll
effect give @e[type=skeleton,tag=giantdad,scores={Timer=210}] resistance 3 9 true
effect give @e[type=skeleton,tag=giantdad,scores={Timer=210}] slowness 3 2 true
tag @e[type=skeleton,tag=giantdad,scores={Timer=210}] add giantdadshielding
execute as @e[type=skeleton,tag=giantdad,tag=giantdadshielding] at @s run function datapack:labyrinth_functions/labyrinthmobabilities/prison/giantdadshield
tag @e[type=skeleton,tag=giantdad,tag=giantdadshielding,scores={Timer=275}] remove giantdadshielding
execute as @e[type=skeleton,tag=giantdad] at @s facing entity @e[type=minecraft:area_effect_cloud,tag=GiantDadRoll,limit=1,sort=nearest] eyes run tp @s ^ ^ ^1
execute at @e[type=skeleton,tag=giantdad] if entity @e[type=minecraft:area_effect_cloud,tag=GiantDadRoll,distance=..3] run kill @e[type=area_effect_cloud,tag=GiantDadRoll]

execute as @e[type=skeleton,tag=giantdad,scores={Timer2=150..}] at @s run function datapack:labyrinth_functions/labyrinthmobabilities/prison/giantdadheal
execute at @e[type=area_effect_cloud,tag=giantdadsun] run effect give @a[distance=..3] instant_damage

scoreboard players reset @e[type=skeleton,tag=giantdad,scores={Timer2=150..}] Timer2
scoreboard players reset @e[type=skeleton,tag=giantdad,scores={Timer=280..}] Timer