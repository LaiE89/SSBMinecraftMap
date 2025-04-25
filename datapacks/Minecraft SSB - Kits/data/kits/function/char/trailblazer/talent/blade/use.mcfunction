## When Shuhu's Gift is Used
# Summons blade
execute as @e[limit=1,sort=nearest,distance=..20,tag=!Trailblazer,tag=!InLabyrinth,type=!#kits:non_entity] at @s run function kits:char/trailblazer/vfx/spawn/random/summon
execute as @e[limit=1,sort=nearest,tag=TrailblazerNew,type=armor_stand] at @s run function kits:char/trailblazer/talent/blade/talent

# Updates data
scoreboard players set @s kits.timer 0
tag @s add TrailblazerBladeAnimation
