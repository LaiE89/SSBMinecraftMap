damage @s 3 bypass:player_attack_no_kb by @e[type=minecraft:area_effect_cloud,tag=SekiroMistRavenExplosive,limit=1,sort=nearest] from @p[tag=Sekiro]
function kits:char/sekiro/posture/posturegain {Posture:5}
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.3 0.3 0.3 0 20 force