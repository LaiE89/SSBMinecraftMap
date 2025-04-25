## When Skill is Used
# Determines type
function kits:char/trailblazer/vfx/spawn/random/summon
execute if score @s kits.ability2CD matches 0 as @e[limit=1,sort=nearest,tag=TrailblazerNew,type=armor_stand] at @s run function kits:char/trailblazer/skill/jingliu/use
execute if score @s kits.ability2CD matches 1 as @e[limit=1,sort=nearest,tag=TrailblazerNew,type=armor_stand] at @s run function kits:char/trailblazer/skill/luocha/use
execute if score @s kits.ability2CD matches 2 as @e[limit=1,sort=nearest,tag=TrailblazerNew,type=armor_stand] at @s run function kits:char/trailblazer/skill/blade/use

# Updates trailblazer data
function kits:char/trailblazer/talent/turn_cycle
scoreboard players remove @s kits.ability1CD 1
scoreboard players set @s kits.ability4CD 0
