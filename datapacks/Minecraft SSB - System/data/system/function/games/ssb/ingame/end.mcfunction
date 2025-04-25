## When game ends
# results
execute if score %arena.playersAlive system.global matches 0 run function system:games/ssb/ingame/results/draw
execute if score %arena.playersAlive system.global matches 1 run execute as @a[tag=system.arena.player] at @s run function system:games/ssb/ingame/results/win

# reset
function system:games/ssb/reset_global
kill @e[type=!player,x=-90,y=-5,z=-910,dx=180,dy=39,dz=-180]
execute as @a[x=-90,y=-5,z=-910,dx=180,dy=39,dz=-180] at @s run function system:utilities/ui/give
tp @a[x=-90,y=-5,z=-910,dx=180,dy=39,dz=-180] 0 1 0 facing 0 1.05 -1