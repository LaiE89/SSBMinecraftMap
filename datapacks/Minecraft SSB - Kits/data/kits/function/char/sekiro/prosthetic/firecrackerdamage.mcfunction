effect give @s minecraft:slowness 2 5 true
effect give @s minecraft:weakness 2 0 true
effect give @s[type=!minecraft:player] minecraft:weakness 2 9 true
effect give @s minecraft:mining_fatigue 2 8 true

damage @s 1 bypass:player_attack_no_kb by @e[type=minecraft:area_effect_cloud,tag=SekiroFirecracker,limit=1,sort=nearest] from @p[tag=Sekiro]
playsound minecraft:entity.player.attack.crit neutral @a[distance=..20] ~ ~ ~ 3 1.5 1
particle minecraft:firework ~ ~1 ~ 0 0 0 0.25 10 force
function kits:char/sekiro/posture/posturegain {Posture:7}

execute if entity @p[tag=Sekiro,tag=!SekiroChasingSlice] run schedule function kits:char/sekiro/chasingslice/reset 10t replace
tag @p[tag=Sekiro,tag=!SekiroChasingSlice] add SekiroChasingSlice
