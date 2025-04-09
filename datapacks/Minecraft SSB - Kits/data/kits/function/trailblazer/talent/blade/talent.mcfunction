## Blade Uses Shuhu's Gift
# Initializes armor stand
data merge entity @s {Tags:["TrailblazerBlade","TrailblazerBladeTalent"],HandItems:[{},{id:netherite_sword,tag:{Unbreakable:1},Count:1}],ArmorItems:[{id:netherite_boots,tag:{Unbreakable:1},Count:1},{id:leather_leggings,tag:{Trim:{pattern:coast,material:iron},display:{color:7900320},Unbreakable:1},Count:1},{id:leather_chestplate,tag:{Trim:{pattern:silence,material:netherite},display:{color:9863790},Unbreakable:1},Count:1},{id:player_head,tag:{SkullOwner:{Id:[I;-282135089,1811761029,-1983214649,1060536147],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2NiZDA5YzQ0ZDg4ZTY1YjFjNzhkZTc4MjU3OTI5ZmI5ZWY4MDc2ZjFkYmM1YThkYWE3NmM1N2E3MTkwYmYwNiJ9fX0="}]}},Unbreakable:1},Count:1}]}
tp @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,distance=..20,tag=!Trailblazer,tag=!InLabyrinth,type=!#kits:non_entity]
tag @s remove TrailblazerNew
