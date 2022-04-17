scoreboard players add @e[type=zombie,tag=labyrinthnightmare] Timer 1
execute as @e[type=zombie,tag=labyrinthnightmare,scores={Timer=25}] at @s run summon armor_stand ~ ~1.35 ~ {Tags:["labyrinthnightmare_Raycast"],Invisible:1,NoGravity:1b,Small:1,Invulnerable:1,DisabledSlots:2039583}
scoreboard players set @e[type=zombie,tag=labyrinthnightmare,scores={Timer=200..}] Timer 0

execute at @e[type=zombie,tag=labyrinthnightmare] run tp @e[type=armor_stand,tag=labyrinthnightmare_Raycast] ~ ~1.35 ~
execute as @e[type=armor_stand,tag=labyrinthnightmare_Raycast] at @s run scoreboard players add @s Timer 1
execute as @e[type=armor_stand,tag=labyrinthnightmare_Raycast] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[type=armor_stand,tag=labyrinthnightmare_Raycast,scores={Timer=1}] at @s anchored eyes run function datapack:labyrinth_functions/labyrinthmobabilities/labyrinthprisonnightmareraycast
execute as @e[type=armor_stand,tag=labyrinthnightmare_Raycast,scores={Timer=5}] at @s anchored eyes run function datapack:labyrinth_functions/labyrinthmobabilities/labyrinthprisonnightmareraycast
execute as @e[type=armor_stand,tag=labyrinthnightmare_Raycast,scores={Timer=10}] at @s anchored eyes run function datapack:labyrinth_functions/labyrinthmobabilities/labyrinthprisonnightmareraycast
execute as @e[type=armor_stand,tag=labyrinthnightmare_Raycast,scores={Timer=15}] at @s anchored eyes run function datapack:labyrinth_functions/labyrinthmobabilities/labyrinthprisonnightmareraycast
execute as @e[type=armor_stand,tag=labyrinthnightmare_Raycast,scores={Timer=20}] at @s anchored eyes run function datapack:labyrinth_functions/labyrinthmobabilities/labyrinthprisonnightmareraycast
execute as @e[type=armor_stand,tag=labyrinthnightmare_Raycast,scores={Timer=20..}] at @s run kill @s