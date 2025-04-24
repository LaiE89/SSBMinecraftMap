schedule clear kits:sekiro/prosthetic/mistravendelaychasingslice
schedule clear kits:sekiro/chasingslice/reset
schedule clear kits:sekiro/prosthetic/mistravenreset

effect give @s minecraft:invisibility 1 0 true
attribute @s minecraft:gravity modifier add gravity.mistraven.sekiro -0.08 add_value

clear @s minecraft:player_head[minecraft:custom_name={text:"Sekiro",color:"gold",underlined:true,bold:true,italic:false}]
clear @s leather_chestplate[custom_name=[{"text":"Shinobi Attire","italic":false,"color":"gold"}]]
clear @s netherite_leggings[custom_name=[{"text":"Shinobi Attire","italic":false,"color":"gold"}]]
clear @s leather_boots[custom_name=[{"text":"Shinobi Attire","italic":false,"color":"gold"}]]

kill @e[type=minecraft:area_effect_cloud,tag=SekiroMistRavenExplosive]
kill @e[type=minecraft:area_effect_cloud,tag=SekiroMistRavenDestination]
function kits:sekiro/prosthetic/mistravendirection

tag @s remove SekiroMistRaven
tag @s add Invincible
