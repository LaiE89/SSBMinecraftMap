scoreboard players add @s kits.timer 1
execute at @s[scores={kits.timer=6..}] run particle dust{color:[0.000,0.502,1.000],scale:1} ~ ~1.4 ~ 0.6 0 0.6 0.05 50 force

execute at @s[scores={kits.timer=..5}] if entity @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Ekko,tag=!InLabyrinth] run scoreboard players set @s kits.timer 6
execute at @s[scores={kits.timer=..40}] as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Ekko,tag=!InLabyrinth,tag=!EkkoTimeWinderHit] at @s run function kits:char/ekko/winder/damage

execute if entity @s[scores={kits.timer=41}] run tag @e[tag=EkkoTimeWinderHit] remove EkkoTimeWinderHit

execute at @s[scores={kits.timer=41..}] as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Ekko,tag=!InLabyrinth,tag=!EkkoTimeWinderHit2] at @s run function kits:char/ekko/winder/damage2

execute at @s[scores={kits.timer=41..}] facing entity @p[tag=Ekko] feet run teleport @s ^ ^ ^2
execute at @s[scores={kits.timer=41..}] if entity @p[tag=Ekko,distance=..2] run function kits:char/ekko/winder/return

tp @s[scores={kits.timer=..5}] ^ ^ ^2
tp @s[scores={kits.timer=6..40}] ^ ^ ^0.25
execute if entity @s[scores={kits.timer=60..}] run tag @e[tag=EkkoTimeWinderHit2] remove EkkoTimeWinderHit2
kill @s[scores={kits.timer=60..}]
