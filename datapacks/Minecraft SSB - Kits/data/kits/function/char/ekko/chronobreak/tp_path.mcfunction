# note: executed every tick at area effect cloud
## Tp along recorded path
# tp
execute store result storage kits:kits ekko.chronobreak.chkpt.index int 1 run scoreboard players get @p[tag=Ekko] kits.timer4
execute at @s run function kits:char/ekko/chronobreak/tp_chkpt with storage kits:kits ekko.chronobreak.chkpt
scoreboard players remove @p[tag=Ekko] kits.timer4 1

# end of path
execute if score @p[tag=Ekko] kits.timer4 matches ..0 run return run function kits:char/ekko/chronobreak/end