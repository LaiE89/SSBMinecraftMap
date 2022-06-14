particle minecraft:flash ~ ~0.5 ~ 0 0 0 0 1
particle minecraft:dust 1 1 0 1.5 ~ ~ ~ 3 0.2 3 0 50
execute at @e[type=zombie,tag=Cinder] as @a[tag=LabyrinthCinder,distance=..50,limit=1,sort=nearest] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["Cinderspearlocation"],Duration:20}
playsound minecraft:entity.firework_rocket.large_blast neutral @a[distance=..50] ~ ~ ~ 10 0 1
playsound minecraft:entity.lightning_bolt.thunder neutral @a[distance=..50] ~ ~ ~ 2 2 1
kill @s