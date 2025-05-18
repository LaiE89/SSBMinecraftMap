damage @s 3 bypass:player_attack_no_kb by @e[type=minecraft:area_effect_cloud,tag=SekiroShuriken,limit=1,sort=nearest] from @p[tag=Sekiro]
function kits:char/sekiro/posture/posturegain {Posture:3}
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0 0 0 0 10 force
playsound minecraft:entity.player.attack.weak neutral @a[distance=..30] ~ ~ ~ 2 2 1
kill @e[type=area_effect_cloud,tag=SekiroShuriken,limit=1,sort=nearest]
tag @p[tag=Sekiro] add SekiroChasingSlice
schedule function kits:char/sekiro/chasingslice/reset 10t replace
