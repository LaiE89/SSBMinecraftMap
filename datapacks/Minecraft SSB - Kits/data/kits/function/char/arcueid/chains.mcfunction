scoreboard players add @p[tag=Arcueid] kits.timer2 1
function kits:char/arcueid/chain_vfx/play {"LowestSliceLength":"30","Inaccuracy":"3","Yaw":"200","Pitch":"45","R":"50","G":"50","B":"50","Size":"75","Distance":"80"}

execute if entity @p[tag=Arcueid,scores={kits.timer2=5}] run tp @e[tag=ArcueidChained] ~ ~-1 ~
execute if entity @p[tag=Arcueid,scores={kits.timer2=6..}] run tp @e[tag=ArcueidChained] ~ ~-1 ~

execute if entity @p[tag=Arcueid,scores={kits.timer2=50..}] run tag @e[tag=ArcueidChained] remove ArcueidChained
execute if entity @p[tag=Arcueid,scores={kits.timer2=50..}] run kill @s
