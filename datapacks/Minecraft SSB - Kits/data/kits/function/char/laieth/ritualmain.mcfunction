scoreboard players add @s kits.timer 1
function kits:char/laieth/ritualparticles
execute if entity @p[tag=LaiethGettingRitualed,scores={kits.criterion.death=1..}] run scoreboard players set @s kits.timer 149
execute if entity @s[scores={kits.timer=150..}] run kill @e[type=area_effect_cloud,tag=LaiethGettingRitualedDamage] 
kill @s[scores={kits.timer=150..}]

execute as @e[type=area_effect_cloud,tag=LaiethGettingRitualedDamage] at @s run function kits:char/laieth/ritualspin
