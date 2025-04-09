## When Skill is Used
# Determines type
function kits:trailblazer/vfx/spawn/random/summon
execute if score @s kits.ability2CD matches 0 as @e[limit=1,sort=nearest,tag=TrailblazerNew,type=armor_stand] at @s run function kits:trailblazer/skill/jingliu/use
execute if score @s kits.ability2CD matches 1 as @e[limit=1,sort=nearest,tag=TrailblazerNew,type=armor_stand] at @s run function kits:trailblazer/skill/luocha/use
execute if score @s kits.ability2CD matches 2 as @e[limit=1,sort=nearest,tag=TrailblazerNew,type=armor_stand] at @s run function kits:trailblazer/skill/blade/use

# Updates trailblazer data
function kits:trailblazer/talent/turn_cycle
scoreboard players remove @s kits.ability1CD 1
scoreboard players set @s kits.ability4CD 0
