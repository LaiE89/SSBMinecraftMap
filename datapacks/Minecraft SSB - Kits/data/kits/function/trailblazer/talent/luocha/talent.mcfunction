## Luocha Uses Cycle of Life
# Initializes armor stand
data merge entity @s {Tags:["TrailblazerLuocha","TrailblazerLuochaTalent"],HandItems:[{},{id:iron_sword,tag:{Unbreakable:1},Count:1}],ArmorItems:[{id:netherite_boots,tag:{Unbreakable:1},Count:1},{id:iron_leggings,tag:{Trim:{pattern:rib,material:netherite},Unbreakable:1},Count:1},{id:iron_chestplate,tag:{Trim:{pattern:vex,material:netherite},Unbreakable:1},Count:1},{id:player_head,tag:{SkullOwner:{Id:[I;-602217968,-1110358670,-1637290497,-805003524],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDZkYjY1ZjAyNDlhN2Y1NDQyMGFmNmM5Yzk1YmU3NTRhNDliYTBhNmVkYTYwMDkzZDRlOGZiOGU2NGU2ZWE3NSJ9fX0="}]}},Unbreakable:1},Count:1}]}
tp @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,distance=..20,tag=!Trailblazer,tag=!InLabyrinth,type=!#kits:non_entity]
tag @s remove TrailblazerNew
