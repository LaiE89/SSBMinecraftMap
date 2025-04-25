## If SPAS Bullet AEC Collides With Enemy
# Execute at enemy hit by bullet
execute if score @s kits.timer matches ..3 as @e[distance=..1.5,limit=1,sort=nearest,tag=!Terminator,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] at @s run function kits:char/terminator/shotgun/shoot/hit_strong
execute if score @s kits.timer matches 4.. as @e[distance=..1.5,limit=1,sort=nearest,tag=!Terminator,tag=!InLabyrinth,type=!#kits:non_entity,tag=!Invincible] at @s run function kits:char/terminator/shotgun/shoot/hit_weak

# Terminate passive
execute as @p[tag=Terminator] at @s run function kits:char/terminator/terminate/damage_enemy

# Kills bullet
kill @s
