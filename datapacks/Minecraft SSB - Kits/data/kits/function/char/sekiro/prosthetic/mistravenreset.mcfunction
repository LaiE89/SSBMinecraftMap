effect clear @p[tag=Sekiro] resistance
attribute @p[tag=Sekiro] minecraft:attack_damage modifier remove damage.mistraven.sekiro
attribute @p[tag=Sekiro] minecraft:movement_speed modifier remove speed.mistraven.sekiro
attribute @p[tag=Sekiro] minecraft:attack_speed modifier remove attack_speed.mistraven.sekiro
attribute @p[tag=Sekiro] minecraft:knockback_resistance modifier remove kb.mistraven.sekiro
tag @p[tag=Sekiro] remove SekiroMistRaven
execute if entity @p[tag=Sekiro,tag=!SekiroPostureBroken,tag=SekiroChasingSlice,predicate=!kits:items/sekiro/kusabimaru] run return run function kits:char/sekiro/enabledeflect
execute if entity @p[tag=Sekiro,tag=!SekiroPostureBroken,tag=!SekiroChasingSlice] run return run function kits:char/sekiro/enabledeflect
