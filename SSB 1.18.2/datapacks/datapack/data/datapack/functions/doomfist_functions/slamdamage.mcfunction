function datapack:damage1
effect give @p[tag=Doomfist] minecraft:absorption 1 0 true
tp @s @e[type=area_effect_cloud,tag=seismicslam,limit=1,sort=nearest]