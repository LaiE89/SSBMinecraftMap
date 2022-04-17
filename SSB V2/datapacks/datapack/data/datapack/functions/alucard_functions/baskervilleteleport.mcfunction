tp @s @e[type=armor_stand,tag=baskerville,limit=1,sort=nearest]
execute at @s run particle minecraft:squid_ink ~ ~ ~ 0.4 1 0.4 0.5 100
scoreboard players set @s Ability3CD 200
kill @e[type=armor_stand,tag=baskerville]