#function kits:doomslayer/ballista/kbtrigger

damage @s 6 bypass:player_attack by @e[type=area_effect_cloud,tag=Doomslayer_Ballista_Hit,limit=1,sort=nearest] from @p[tag=Doomslayer]
particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0 0 0 0 50 force
particle smoke ~ ~1 ~ 0 0 0 0.35 50 force

scoreboard players add @p[tag=Doomslayer,scores={kits.ability7CD=..99}] kits.ability7CD 10