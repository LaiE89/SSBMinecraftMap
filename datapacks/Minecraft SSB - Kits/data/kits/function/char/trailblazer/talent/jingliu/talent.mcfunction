## Jingliu Uses Crescent Transmigration
# Initializes armor stand
data merge entity @s {Tags:["TrailblazerJingliu","TrailblazerJingliuTalent"],HandItems:[{id:diamond_sword,tag:{Unbreakable:1},Count:1}],ArmorItems:[{id:netherite_boots,tag:{Trim:{pattern:rib,material:lapis},Unbreakable:1},Count:1},{id:iron_leggings,tag:{Trim:{pattern:sentry,material:netherite},Unbreakable:1},Count:1},{id:leather_chestplate,tag:{Trim:{pattern:dune,material:lapis},display:{color:3289700},Unbreakable:1},Count:1},{id:player_head,tag:{SkullOwner:{Id:[I;-1812985612,-432058792,-1356968154,-827987396],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTFiZDRlM2JlZDEwZWYyMWQ0NzI3NzNlNmM1OTI4NmNmZjFkMzY3MjIyMmMxNDc3NjY5NWFhNDU2OWIwYWU5MCJ9fX0="}]}},Unbreakable:1},Count:1}]}
tp @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,distance=..20,tag=!Trailblazer,tag=!InLabyrinth,type=!#kits:non_entity]
tag @s remove TrailblazerNew
