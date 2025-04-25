# example call: function kits:char/gojo/utilities/random_pos/start {"itt":"1","yaw":"180","pitch":"90","distMin":"0","distMax":"10","atPos":"function"}
## Starts the entire procedure
# initialize
$scoreboard players set %gojo.randomPos.yaw kits.constant $(yaw)
$scoreboard players set %gojo.randomPos.pitch kits.constant $(pitch)
$scoreboard players set %gojo.randomPos.distMin kits.constant $(distMin)
$scoreboard players set %gojo.randomPos.distMax kits.constant $(distMax)
$scoreboard players set %gojo.randomPos.itt kits.timer $(itt)

# store
execute store result storage kits:kits gojo.randomPos.yaw int 1 run scoreboard players get %gojo.randomPos.yaw kits.constant
execute store result storage kits:kits gojo.randomPos.yawNeg int -1 run scoreboard players get %gojo.randomPos.yaw kits.constant
execute store result storage kits:kits gojo.randomPos.pitch int 1 run scoreboard players get %gojo.randomPos.pitch kits.constant
execute store result storage kits:kits gojo.randomPos.pitchNeg int -1 run scoreboard players get %gojo.randomPos.pitch kits.constant
execute store result storage kits:kits gojo.randomPos.distMin int 1 run scoreboard players get %gojo.randomPos.distMin kits.constant
execute store result storage kits:kits gojo.randomPos.distMax int 1 run scoreboard players get %gojo.randomPos.distMax kits.constant
$data modify storage kits:kits gojo.randomPos.atPos set value "$(atPos)"

# run
summon marker ~ ~ ~ {Tags:["GojoRandomPos"]}
execute as @e[type=marker,limit=1,sort=nearest,tag=GojoRandomPos] at @s run function kits:char/gojo/utilities/random_pos/init with storage kits:kits gojo.randomPos

# reset
scoreboard players reset %gojo.randomPos.yaw
scoreboard players reset %gojo.randomPos.pitch
scoreboard players reset %gojo.randomPos.distMin
scoreboard players reset %gojo.randomPos.distMax
scoreboard players reset %gojo.randomPos.itt
data remove storage kits:kits gojo.randomPos