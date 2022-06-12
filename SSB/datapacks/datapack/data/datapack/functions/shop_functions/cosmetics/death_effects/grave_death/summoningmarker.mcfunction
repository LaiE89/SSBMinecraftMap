playsound minecraft:block.gravel.break neutral @a[distance=..20] ~ ~ ~ 3 0 1
particle minecraft:squid_ink ~ ~1 ~ 0 0 0 0.5 30
summon area_effect_cloud ~ ~1 ~ {CustomName:'{"text":"..."}',Tags:["gravedeatheffectstand"],CustomNameVisible:1,Duration:100}
execute as @s run loot spawn ~ ~ ~ loot mctools:chests/player_head
data modify entity @e[type=minecraft:area_effect_cloud,tag=gravedeatheffectstand,limit=1,sort=nearest] CustomName set from entity @e[type=minecraft:item,limit=1,sort=nearest] Item.tag.display.Name
kill @e[type=minecraft:item,limit=1,sort=nearest]