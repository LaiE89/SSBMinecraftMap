execute if entity @e[distance=..2,type=minecraft:area_effect_cloud,tag=SekiroMistRavenDestination] run function kits:char/sekiro/prosthetic/mistravendashcomplete

execute facing entity @e[type=minecraft:area_effect_cloud,tag=SekiroMistRavenDestination,limit=1,sort=nearest] eyes run tp @s ^ ^ ^1

particle minecraft:squid_ink ~ ~0.5 ~ 0.3 0.3 0.3 0 5
summon area_effect_cloud ~ ~0.5 ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:10,Tags:["SekiroMistRavenExplosive"]}