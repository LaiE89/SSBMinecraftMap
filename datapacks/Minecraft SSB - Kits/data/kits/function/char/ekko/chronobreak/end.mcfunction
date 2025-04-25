# reset
schedule clear kits:char/ekko/chronobreak/end
data remove storage kits:kits ekko.chronobreak

# fx
execute as @p[tag=Ekko] at @s run function kits:char/ekko/chronobreak/explosion

# kill aec
kill @s[type=area_effect_cloud,tag=EkkoChronobreakImage]
