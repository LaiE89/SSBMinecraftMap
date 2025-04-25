## When Prayer of Abyss Flower is Used
# Summons luocha
function kits:char/trailblazer/vfx/spawn/random/summon
execute as @e[limit=1,sort=nearest,tag=TrailblazerNew,type=armor_stand] at @s run function kits:char/trailblazer/skill/luocha/use

# Updates data
scoreboard players set @s kits.timer4 0
tag @s add TrailblazerLuochaAnimation
