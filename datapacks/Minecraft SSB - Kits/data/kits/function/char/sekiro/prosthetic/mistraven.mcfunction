schedule clear kits:char/sekiro/prosthetic/mistravenreset
tag @s add SekiroMistRaven
effect give @s minecraft:resistance 1 9 true
particle minecraft:cloud ~ ~1 ~ 0.3 0.5 0.3 0.1 20 force
playsound minecraft:entity.player.attack.nodamage neutral @a[distance=..20] ~ ~ ~ 2 0.75 1
attribute @s minecraft:attack_damage modifier add damage.mistraven.sekiro -20 add_value
attribute @s minecraft:movement_speed modifier add speed.mistraven.sekiro -0.1 add_value
attribute @s minecraft:attack_speed modifier add attack_speed.mistraven.sekiro -50 add_value
attribute @s minecraft:knockback_resistance modifier add kb.mistraven.sekiro 1 add_value
function kits:char/sekiro/spiritemblems/cost {Emblems:2}
execute if entity @s[tag=!SekiroPostureBroken] run function kits:char/sekiro/disabledeflect
scoreboard players set @s kits.ability4CD 0
schedule function kits:char/sekiro/prosthetic/mistravenreset 15t replace