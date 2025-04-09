team join Mobs @s[team=!Mob,type=!player]

data modify storage temp:data Pos set value [I;0,0,0]
execute store result storage temp:data Pos[0] int 1 run data get entity @s Pos[0]
execute store result storage temp:data Pos[1] int 1 run data get entity @s Pos[1]
execute store result storage temp:data Pos[2] int 1 run data get entity @s Pos[2]
execute as @e[type=wandering_trader,tag=AlucardBaskerville] run data modify entity @s wander_target set from storage temp:data Pos
data remove storage temp:data Pos
