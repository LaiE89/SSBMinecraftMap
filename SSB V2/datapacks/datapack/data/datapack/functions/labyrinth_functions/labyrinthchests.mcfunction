# Basement Chests
setblock -5080 51 196 minecraft:chest[facing=north]{LootTable:"mctools:chests/zombie_chest"} destroy
setblock -5053 51 176 minecraft:chest[facing=north]{LootTable:"mctools:chests/zombie_chest"} destroy

# Grief Basement Chests
setblock -5043 36 150 minecraft:chest[facing=west]{LootTable:"mctools:chests/gold_chest"} destroy
setblock -5027 36 144 minecraft:chest[facing=south]{LootTable:"mctools:chests/rare_chest"} destroy
setblock -5043 36 164 minecraft:chest[facing=west]{LootTable:"mctools:chests/gold_chest"} destroy
setblock -5032 36 156 minecraft:chest[facing=west]{LootTable:"mctools:chests/gold_chest"} destroy
setblock -5036 36 151 minecraft:chest[facing=east]{LootTable:"mctools:chests/gold_chest"} destroy

# School Chests (Downstairs)
setblock -5051 73 77 minecraft:chest[facing=north]{LootTable:"mctools:chests/heals"} destroy
setblock -5065 73 77 minecraft:chest[facing=north]{LootTable:"mctools:chests/heals"} destroy
setblock -5119 73 9 minecraft:chest[facing=east]{LootTable:"mctools:chests/gold_chest"} destroy
setblock -5088 73 1 minecraft:chest[facing=east]{LootTable:"mctools:chests/zombie_chest"} destroy
setblock -5030 73 19 minecraft:chest[facing=west]{LootTable:"mctools:chests/zombie_chest"} destroy

# School Chests (Upstairs)
setblock -5106 79 -9 minecraft:chest[facing=north]{LootTable:"mctools:chests/zombie_chest"} destroy
setblock -5062 79 -10 minecraft:chest[facing=west]{LootTable:"mctools:chests/zombie_chest"} destroy
setblock -5050 82 9 minecraft:chest[facing=north]{LootTable:"mctools:chests/gold_chest"} destroy
setblock -5030 79 -7 minecraft:chest[facing=west]{LootTable:"mctools:chests/heals"} destroy
setblock -5046 79 29 minecraft:chest[facing=east]{LootTable:"mctools:chests/gold_chest"} destroy
setblock -5031 79 45 minecraft:chest[facing=west]{LootTable:"mctools:chests/zombie_chest"} destroy
setblock -5062 79 31 minecraft:chest[facing=west]{LootTable:"mctools:chests/zombie_chest"} destroy

# Prison Chests
setblock -5107 80 97 minecraft:chest[facing=north]{LootTable:"mctools:chests/zombie_chest"} destroy

kill @e[type=item,x=-4969,y=272,z=252,dx=-310,dy=-400,dz=-322]
kill @e[type=armor_stand,tag=!Boss,x=-4969,y=272,z=252,dx=-310,dy=-400,dz=-322]
kill @e[type=area_effect_cloud,tag=!Boss,x=-4969,y=272,z=252,dx=-310,dy=-400,dz=-322]