# Action Bar
execute at @s unless entity @e[distance=..30,type=!#kits:non_entity,tag=!Invincible,tag=!Sekiro,tag=!InLabyrinth,sort=nearest,limit=1] run function kits:char/sekiro/actionbar/noenemy
execute at @s if entity @e[distance=..30,type=!#kits:non_entity,tag=!Invincible,tag=!Sekiro,tag=!InLabyrinth,sort=nearest,limit=1] as @e[distance=..30,type=!#kits:non_entity,tag=!Invincible,tag=!Sekiro,tag=!InLabyrinth,sort=nearest,limit=1] at @s run function kits:char/sekiro/actionbar/enemy

# Posture Recovery
execute if score @s kits.specific.sekiroPosture matches 1.. unless score @s kits.specific.sekiroPostureTimer matches 1.. run scoreboard players remove @s kits.specific.sekiroPosture 1
execute if score @s kits.specific.sekiroPostureTimer matches 1.. run scoreboard players remove @s kits.specific.sekiroPostureTimer 1

# Deflecting Detection
execute if score @s kits.criterion.block matches 1.. if score @s kits.timer matches 6.. at @s run function kits:char/sekiro/deflect/block
execute if score @s kits.criterion.block matches 1.. if score @s kits.timer matches ..5 at @s run function kits:char/sekiro/deflect/perfectdeflect

# Gain Posture Damage on Hurt
execute if score @s kits.criterion.damage matches 1.. unless score @s kits.criterion.block matches 1.. at @s run function kits:char/sekiro/posture/posturegainhurt

# Enemy Posture
execute at @s as @e[distance=..60,type=!#kits:non_entity,tag=!Invincible,tag=!Sekiro,tag=!InLabyrinth] at @s run function kits:char/sekiro/posture/posturemeter

# Jump on enemy
execute if score @s[tag=!SekiroPostureBroken,tag=!SekiroMortalDraw,tag=!SekiroMistRaven] kits.criterion.jump matches 1.. at @s run function kits:char/sekiro/jump/start
execute if entity @s[tag=SekiroJump,tag=!SekiroPostureBroken,tag=!SekiroMortalDraw,tag=!SekiroMistRaven] at @s run function kits:char/sekiro/jump/fall

# Spirit Emblems Recovery
execute if score @s kits.criterion.kill matches 1.. run function kits:char/sekiro/spiritemblems/gain {Emblems:10}
execute if score @s kits.criterion.carrot matches 1.. run function kits:char/sekiro/spiritemblems/gain {Emblems:5}
execute if score @s kits.criterion.death matches 1.. run function kits:char/sekiro/spiritemblems/gain {Emblems:10}

# Mortal Draw
scoreboard players add @s[scores={kits.ability1CD=..19}] kits.ability1CD 1
execute if score @s kits.ability1CD matches 20.. if score @s kits.timer3 matches 3.. if entity @s[tag=!SekiroPostureBroken,tag=!SekiroMortalDraw,tag=!SekiroMistRaven,gamemode=!spectator,predicate=kits:items/sekiro/kusabimaru,scores={kits.criterion.shift=1..}] run function kits:char/sekiro/mortaldraw/start

scoreboard players set @s[scores={kits.criterion.shift=1..}] kits.criterion.shiftOff 0
scoreboard players add @s[scores={kits.criterion.shift=0}] kits.criterion.shiftOff 1
scoreboard players add @s[tag=SekiroMortalDraw,gamemode=!spectator,scores={kits.criterion.shift=1..},predicate=kits:items/sekiro/kusabimaru] kits.criterion.shiftOn 1

execute if score @s[tag=SekiroMortalDraw,gamemode=!spectator,predicate=kits:items/sekiro/kusabimaru] kits.criterion.shiftOn matches 1.. if score @s kits.timer3 matches 3.. at @s run function kits:char/sekiro/mortaldraw/charge
execute if score @s[tag=SekiroMortalDraw] kits.criterion.shiftOff matches 2.. run function kits:char/sekiro/mortaldraw/reset

scoreboard players reset @s[scores={kits.criterion.shiftOff=2..}] kits.criterion.shiftOn
scoreboard players reset @s[scores={kits.criterion.shiftOff=3..}] kits.criterion.shiftOff

# Switch Prosthetics
scoreboard players add @s[scores={kits.ability2CD=..9}] kits.ability2CD 1
execute if score @s kits.ability2CD matches 10.. if entity @s[tag=!SekiroMortalDraw,tag=!SekiroMistRaven,gamemode=!spectator,predicate=kits:items/sekiro/prosthetic,scores={kits.criterion.shift=1..}] at @s run function kits:char/sekiro/prosthetic/switch

# Shurikens
scoreboard players add @s[scores={kits.ability3CD=..4}] kits.ability3CD 1
execute if score @s kits.timer4 matches 0 if score @s kits.ability3CD matches 5.. if score @s kits.timer3 matches 1.. if entity @s[tag=!SekiroPostureBroken,tag=!SekiroMortalDraw,tag=!SekiroMistRaven,predicate=kits:items/sekiro/prosthetic,scores={kits.criterion.COS=1..}] at @s run function kits:char/sekiro/prosthetic/shuriken
execute as @e[type=area_effect_cloud,tag=SekiroShuriken] at @s run function kits:char/sekiro/prosthetic/shurikenprojectile

# Mist Raven, Costs 2 Spirit Emblems. Gain resistance. If you get hit, dash in a direction. If no direction is input, dash up. On dash, leaves an explosive trail 
scoreboard players add @s[scores={kits.ability4CD=..24}] kits.ability4CD 1
execute if score @s kits.timer4 matches 1 if score @s kits.ability4CD matches 25.. if score @s kits.timer3 matches 2.. if entity @s[tag=!SekiroMortalDraw,tag=!SekiroMistRaven,predicate=kits:items/sekiro/prosthetic,scores={kits.criterion.COS=1..}] at @s run function kits:char/sekiro/prosthetic/mistraven
execute as @s[tag=SekiroMistRaven,scores={kits.criterion.resistDmg=1..}] at @s run function kits:char/sekiro/prosthetic/mistravenactivate
execute if entity @e[type=area_effect_cloud,tag=SekiroMistRavenDestination] at @s run function kits:char/sekiro/prosthetic/mistravendash

# Firecracker, Costs 3 Spirit Emblems. Cause aoe explosions that slows and weakens enemies
scoreboard players add @s[scores={kits.ability5CD=..20}] kits.ability5CD 1
execute if score @s kits.timer4 matches 2 if score @s kits.ability5CD matches 19.. if score @s kits.timer3 matches 3.. if entity @s[tag=!SekiroPostureBroken,tag=!SekiroMortalDraw,tag=!SekiroMistRaven,predicate=kits:items/sekiro/prosthetic,scores={kits.criterion.COS=1..}] at @s run function kits:char/sekiro/prosthetic/firecracker
execute if entity @e[type=area_effect_cloud,tag=SekiroFirecracker] as @e[type=area_effect_cloud,tag=SekiroFirecracker] at @s run function kits:char/sekiro/prosthetic/firecrackerprojectile

# Chasing Slice
execute as @s[tag=!SekiroPostureBroken,tag=!SekiroMortalDraw,tag=!SekiroMistRaven,tag=SekiroChasingSlice,gamemode=!spectator,predicate=kits:items/sekiro/kusabimaru] unless entity @e[type=area_effect_cloud,tag=SekiroMistRavenDestination] at @s run function kits:char/sekiro/chasingslice/start
execute if entity @e[type=area_effect_cloud,tag=SekiroChasingSliceDestination] at @s run function kits:char/sekiro/chasingslice/dash