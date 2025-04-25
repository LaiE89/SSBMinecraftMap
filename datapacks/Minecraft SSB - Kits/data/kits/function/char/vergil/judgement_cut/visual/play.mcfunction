## Plays Judgement Cut
function kits:char/vergil/judgement_cut/visual/end
particle flash ~ ~ ~ 0 0 0 0 1 force
summon area_effect_cloud ~ ~ ~ {Tags:["VFX_JudgementCut"],Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:0}
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=VFX_JudgementCut] at @s run function kits:char/vergil/judgement_cut/visual/run
execute as @e[type=!#kits:non_entity,tag=!Invincible,tag=!Vergil,distance=..3,tag=!InLabyrinth] at @s run damage @s 0.5 bypass:player_attack_no_kb by @e[type=area_effect_cloud,tag=judgementcutmiddle,limit=1,sort=nearest] from @p[tag=Vergil]