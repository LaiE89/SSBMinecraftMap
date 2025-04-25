damage @s 6 bypass:player_attack by @p[tag=Doomfist]
effect give @s slowness 1 2 true
execute as @p[tag=Doomfist] at @s run function kits:char/doomfist/bestdefense
#tp @s @e[type=area_effect_cloud,tag=seismicslam,limit=1,sort=nearest]
