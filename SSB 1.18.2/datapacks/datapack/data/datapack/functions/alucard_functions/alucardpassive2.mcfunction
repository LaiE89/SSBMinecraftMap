team join LabyrinthMob @s[team=!LabyrinthMob,type=!player]

data modify entity @e[type=wandering_trader,tag=baskerville,sort=nearest,limit=1] WanderTarget.X set from entity @s Pos[0]
data modify entity @e[type=wandering_trader,tag=baskerville,sort=nearest,limit=1] WanderTarget.Y set from entity @s Pos[1]
data modify entity @e[type=wandering_trader,tag=baskerville,sort=nearest,limit=1] WanderTarget.Z set from entity @s Pos[2]