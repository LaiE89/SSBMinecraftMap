schedule clear kits:char/sekiro/prosthetic/mistravendelaychasingslice
schedule clear kits:char/sekiro/chasingslice/reset
schedule clear kits:char/sekiro/prosthetic/mistravenreset

execute if entity @s[tag=SekiroPostureBroken] run function kits:char/sekiro/posture/posturerecoversekiro

particle minecraft:squid_ink ~ ~1 ~ 0.3 0.3 0.3 0.1 20
effect give @s minecraft:invisibility 1 0 true
attribute @s minecraft:gravity modifier add gravity.mistraven.sekiro -1 add_multiplied_total
tp @s @s

clear @s minecraft:player_head[minecraft:custom_name={text:"Sekiro",color:"gold",underlined:true,bold:true,italic:false}]
clear @s leather_chestplate[custom_name=[{"text":"Shinobi Attire","italic":false,"color":"gold"}]]
clear @s netherite_leggings[custom_name=[{"text":"Shinobi Attire","italic":false,"color":"gold"}]]
clear @s leather_boots[custom_name=[{"text":"Shinobi Attire","italic":false,"color":"gold"}]]

kill @e[type=minecraft:area_effect_cloud,tag=SekiroMistRavenExplosive]
kill @e[type=minecraft:area_effect_cloud,tag=SekiroMistRavenDestination]
function kits:char/sekiro/prosthetic/mistravendirection

tag @s remove SekiroMistRaven
tag @s add Invincible

schedule function kits:char/sekiro/prosthetic/mistravendashensure 20t replace
