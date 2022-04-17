execute positioned -5058 73 118 as @p[tag=InLabyrinth,tag=!LabyrinthUnderground,distance=..3] at @s run tag @s remove LabyrinthPrison
execute positioned -5058 73 118 as @p[tag=InLabyrinth,tag=!LabyrinthUnderground,distance=..3] at @s run tag @s remove LabyrinthSchool
execute positioned -5058 73 118 as @p[tag=InLabyrinth,tag=!LabyrinthUnderground,distance=..3] at @s run tag @s add LabyrinthUnderground

execute positioned -5077 73 100 as @p[tag=InLabyrinth,tag=!LabyrinthPrison,distance=..3] at @s run tag @s remove LabyrinthUnderground
execute positioned -5077 73 100 as @p[tag=InLabyrinth,tag=!LabyrinthPrison,distance=..3] at @s run tag @s remove LabyrinthSchool
execute positioned -5077 73 100 as @p[tag=InLabyrinth,tag=!LabyrinthPrison,distance=..3] at @s run tag @s add LabyrinthPrison

execute positioned -5058 73 82 as @p[tag=InLabyrinth,tag=!LabyrinthSchool,distance=..3] at @s run tag @s remove LabyrinthUnderground
execute positioned -5058 73 82 as @p[tag=InLabyrinth,tag=!LabyrinthSchool,distance=..3] at @s run tag @s remove LabyrinthPrison
execute positioned -5058 73 82 as @p[tag=InLabyrinth,tag=!LabyrinthSchool,distance=..3] at @s run tag @s add LabyrinthSchool