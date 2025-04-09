execute rotated ~ 0 run summon armor_stand ^ ^1 ^-1 {Invulnerable:1b,Small:1b,Invisible:1b,Tags:["RoseradeSeeds","launch","projectile"],Pose:{Head:[180f,0f,0f]},DisabledSlots:2047807,equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWYxMTlhZGUzYjUxM2U5NTJiYmJmYzUwZTEzZjJkMDU5ZjdiMTUwOTliYTMwNjcxYmJkYzQ2NDdkM2U3ZDE4ZCJ9fX0="}]}}}}}
data modify entity @e[type=armor_stand,tag=RoseradeSeeds,sort=nearest,limit=1] Rotation set from entity @s Rotation
execute as @e[type=armor_stand,tag=RoseradeSeeds] at @s run function kits:_main/generic/launch {"sVert":"0.1","sHorz":"1","power":"0.002"}
scoreboard players set @s kits.ability3CD 0
