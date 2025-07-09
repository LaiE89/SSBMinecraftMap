team join LabyrinthMobs @s[team=!LabyrinthMobs,type=!player]

data modify storage kits:kits alucard.pos set value [I;0,0,0]
execute store result storage kits:kits alucard.pos[0] int 1 run data get entity @s Pos[0]
execute store result storage kits:kits alucard.pos[1] int 1 run data get entity @s Pos[1]
execute store result storage kits:kits alucard.pos[2] int 1 run data get entity @s Pos[2]
execute as @e[type=wandering_trader,tag=AlucardBaskerville] run data modify entity @s wander_target set from storage kits:kits alucard.pos
data remove storage kits:kits alucard.pos
