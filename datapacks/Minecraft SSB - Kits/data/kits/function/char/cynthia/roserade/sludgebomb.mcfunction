execute rotated ~ 0 run summon armor_stand ^ ^1 ^-1 {Invulnerable:1b,Small:1b,Invisible:1b,Tags:["RoseradeBomb","launch","projectile"],Pose:{Head:[180f,0f,0f]},DisabledSlots:2047807,equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2E5NDgxZDFhMGRjN2Q1ODgyNzQ3MThjYTBiMjQ3NGE3ODI4OTMxMzJhM2M0ODk4ZmE1ZDI3NjdiNDM3NTBkOCJ9fX0="}]}}}}}
data modify entity @e[type=armor_stand,tag=RoseradeBomb,sort=nearest,limit=1] Rotation set from entity @s Rotation
execute as @e[type=armor_stand,tag=RoseradeBomb] at @s run function kits:generic/physics/launch {"sVert":"0.1","sHorz":"1","power":"0.002"}
scoreboard players set @s kits.ability1CD 0
