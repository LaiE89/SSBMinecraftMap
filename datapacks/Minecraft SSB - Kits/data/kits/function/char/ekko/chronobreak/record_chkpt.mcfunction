## Records checkpoint every 5t
# record
scoreboard players add @s kits.timer4 1
execute store result storage kits:kits ekko.chronobreak.chkpt.index int 1 run scoreboard players get @s kits.timer4
function kits:char/ekko/chronobreak/record_data with storage kits:kits ekko.chronobreak.chkpt

# remove older checkpoints if too many
execute if score @s kits.timer4 matches 15.. run function kits:char/ekko/chronobreak/replace_chkpt
