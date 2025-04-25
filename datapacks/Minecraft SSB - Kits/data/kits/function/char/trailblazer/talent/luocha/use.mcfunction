## When Cycle of Life is Used
# Summons luocha
function kits:char/trailblazer/vfx/spawn/random/summon
execute as @e[limit=1,sort=nearest,tag=TrailblazerNew,type=armor_stand] at @s run function kits:char/trailblazer/talent/luocha/talent

# Updates data
scoreboard players set @s kits.timer3 0
tag @s add TrailblazerLuochaAnimation
