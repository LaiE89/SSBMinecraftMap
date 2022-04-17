execute as @a[x=-191,y=72,z=79,dx=-2,dy=2,dz=2,tag=Player1] at @s run function datapack:reset
execute as @a[x=-191,y=72,z=79,dx=-2,dy=2,dz=2,tag=Player2] at @s run function datapack:reset
execute as @a[x=-191,y=72,z=79,dx=-2,dy=2,dz=2,tag=Player3] at @s run function datapack:reset
execute as @a[x=-191,y=72,z=79,dx=-2,dy=2,dz=2,tag=Player4] at @s run function datapack:reset
execute as @a[x=-191,y=72,z=79,dx=-2,dy=2,dz=2,gamemode=spectator] at @s run function datapack:reset
execute as @a[x=-191,y=72,z=79,dx=-2,dy=2,dz=2,tag=InLabyrinth] at @s run function datapack:reset

# Killing lobby gui at spawn
execute as @e[type=minecraft:armor_stand,tag=MenuMove] at @s unless entity @a[distance=..2] run function datapack:lobby_functions/killingmenu 