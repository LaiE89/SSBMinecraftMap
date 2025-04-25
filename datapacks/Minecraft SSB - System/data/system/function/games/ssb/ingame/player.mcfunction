## Running executed at player
# on death
execute if score @s system.criterion.death matches 1.. run function system:games/ssb/ingame/death

# out of bounds
execute unless entity @s[x=-47,y=-1,z=-953,dx=93,dy=28,dz=-93] run tp @s 0 0 -1000

# spectator duration
execute if score @s system.ssb.deathTimer matches 0.. run scoreboard players remove @s system.ssb.deathTimer 1
execute if score @s system.ssb.deathTimer matches 0 run function system:games/ssb/ingame/revive