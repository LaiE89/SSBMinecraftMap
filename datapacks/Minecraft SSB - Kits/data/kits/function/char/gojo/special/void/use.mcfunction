## When unlimited void is used
# trap nearby enemies in domain
execute rotated ~ 0 positioned ^ ^1 ^7 run tag @e[type=!#kits:non_entity,tag=GojoUnlimitedVoidTrapped] remove GojoUnlimitedVoidTrapped
execute rotated ~ 0 positioned ^ ^1 ^7 run tag @e[type=!#kits:non_entity,distance=..9] add GojoUnlimitedVoidTrapped
execute if data entity @s {OnGround:0b} as @e[type=!#kits:non_entity,tag=GojoUnlimitedVoidTrapped] at @s run attribute @s minecraft:gravity modifier add gravity.domainexpansion.gojo -1 add_multiplied_total
execute if data entity @s {OnGround:0b} as @e[type=!#kits:non_entity,tag=GojoUnlimitedVoidTrapped] at @s run tp @s @s

# expand domain
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Age:20,Tags:["GojoUnlimitedVoid"],Duration:100}
execute rotated ~ 0 run tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=GojoUnlimitedVoid] ^ ^1 ^7 0 0
function kits:char/gojo/vfx/unlimited_void/play

# remove scores
scoreboard players remove @s kits.ability1CD 100
scoreboard players set @s kits.ability6CD 0