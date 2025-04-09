# example call: function system:utilities/player_status/death {"tpPlayer":"0","onDeathPos":"function"}
# @param tpPlayer: 0 = false, 1 = true
## Handles Actions on Player Death
# initialize parameters
$scoreboard players set %player.death.boolTp system.global $(tpPlayer)
$data modify storage minecraft:player death.onPos set value "$(onDeathPos)"

# store death location
execute store result storage minecraft:player death.posX double 1.0 run data get entity @s LastDeathLocation.pos[0]
execute store result storage minecraft:player death.posY double 1.0 run data get entity @s LastDeathLocation.pos[1]
execute store result storage minecraft:player death.posZ double 1.0 run data get entity @s LastDeathLocation.pos[2]

# tpPlayer to death pos
execute if score %player.death.boolTp system.global matches 1 run function system:utilities/player_status/death_tp with storage minecraft:player death

# onDeathPos
summon marker ~ ~ ~ {Tags:["player.death.lastDeathPos"]}
execute as @e[type=marker,tag=player.death.lastDeathPos,limit=1,sort=nearest] at @s run function system:utilities/player_status/death_pos with storage minecraft:player death

# reset
scoreboard players reset %player.death.boolTp
data remove storage minecraft:player death