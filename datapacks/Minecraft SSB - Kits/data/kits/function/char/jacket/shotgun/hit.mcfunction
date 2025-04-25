## If Shotgun Bullet Collides With Entity
# Execute at entity hit by shotgun bullet
execute as @e[distance=..1.75,limit=1,sort=nearest,tag=!Jacket,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] at @s run function kits:char/jacket/shotgun/hit2

# Knocks enemies back at close range
#scoreboard players set @p[tag=Jacket] kits.raycastTick 0
#execute as @p[tag=Jacket] at @s rotated ~ 0 positioned ~ ~1 ~ run function kits:char/jacket/shotgun/kb

# Knocks enemies back once
#tag @e[tag=JacketShotgunKB] remove JacketShotgunKB

# Kills bullet
kill @s
