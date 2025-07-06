particle block{block_state:"minecraft:redstone_block"} ~ ~0.5 ~ 0.3 0.3 0.3 1 100 force
playsound minecraft:entity.player.attack.crit neutral @a[distance=..20] ~ ~ ~ 5 0 1
execute at @p[tag=Brad] run summon area_effect_cloud ~ ~ ~ {Tags:["BradSurpriseAttack"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:3}
damage @s 6 bypass:player_attack by @e[type=area_effect_cloud,tag=BradSurpriseAttack,limit=1,sort=nearest] from @p[tag=Brad]
kill @e[type=area_effect_cloud,tag=BradSurpriseAttack]

effect give @s minecraft:wither 2 4 true
effect give @s minecraft:slowness 2 4 true
