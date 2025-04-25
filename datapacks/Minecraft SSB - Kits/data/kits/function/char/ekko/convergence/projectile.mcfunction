execute at @s facing entity @e[type=area_effect_cloud,tag=EkkoConvergencePosition,sort=nearest,limit=1] feet run tp @s ^ ^1 ^1.5
particle dust{color:[0.000,0.502,1.000],scale:0.5} ~ ~ ~ 0.2 0.2 0.2 0 100 force

execute as @e[distance=..2,type=area_effect_cloud,tag=EkkoConvergencePosition] at @s run function kits:char/ekko/convergence/activated
