
scoreboard players add @p[tag=Denji] kits.timer3 1
execute positioned ~ ~1 ~ run function kits:chainsawman/chain_vfx/play {"LowestSliceLength":"30","Inaccuracy":"3","Yaw":"200","Pitch":"45","R":"50","G":"50","B":"50","Size":"75","Distance":"80"}
execute if entity @p[tag=Denji,scores={kits.timer3=40..}] run tag @s remove DenjiChained
scoreboard players reset @p[tag=Denji,scores={kits.timer3=40..}] kits.timer3

execute at @s positioned ~ ~0.75 ~ facing entity @p[tag=Denji] feet run function kits:chainsawman/chainsawmanpassive3
execute as @p[tag=Denji,tag=DenjiChainsaw,scores={kits.ability1CD=10..99},predicate=kits:items/chainsawman/chainsaw] as @s[scores={kits.criterion.COS=1..}] at @s run function kits:chainsawman/chainpull 
