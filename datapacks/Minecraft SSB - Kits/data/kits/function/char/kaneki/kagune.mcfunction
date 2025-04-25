execute at @s positioned ~ ~ ~ facing entity @p[tag=Kaneki] feet run function kits:char/kaneki/kanekipassive3
execute at @s if entity @p[tag=Kaneki,distance=20..] run function kits:char/kaneki/kagunetoofar

particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0 0 0 10 0 force

execute as @p[tag=Kaneki] at @s facing entity @e[type=area_effect_cloud,tag=KanekiKagune,tag=KanekiPulling,limit=1,sort=nearest] eyes if block ^ ^ ^2 #kits:passable run tp @s ^ ^ ^2
execute at @s[tag=KanekiPulling] if entity @p[tag=Kaneki,distance=..2] run function kits:char/kaneki/kagunepull
