execute if entity @s[scores={kits.criterion.shiftOn=..59},tag=!VergilJudgementCut,tag=!VergilJudgementCutEnd] run function kits:char/vergil/judgement_cut/judgementcutuse
execute if entity @s[scores={kits.criterion.shiftOn=60..},tag=!VergilJudgementCut,tag=!VergilJudgementCutEnd] run function kits:char/vergil/judgement_cut_end/judgementcutenduse
tag @s remove VergilCharge
