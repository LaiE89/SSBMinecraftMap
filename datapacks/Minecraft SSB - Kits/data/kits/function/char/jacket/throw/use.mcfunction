## When Throw Is Used
# Throws item
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Duration:20,Tags:["JacketThrowItemTasks","JacketProjectile","projectile"]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["JacketThrowVisual","JacketProjectile","projectile"],Pose:{RightArm:[0f,0f,270f]},DisabledSlots:2039583}
execute if entity @s[predicate=kits:items/jacket/throwing_knife] run tag @e[limit=1,sort=nearest,tag=JacketThrowItemTasks,type=area_effect_cloud] add JacketThrowLethalItemTasks
item replace entity @e[limit=1,sort=nearest,tag=JacketThrowVisual,type=armor_stand] weapon.mainhand from entity @s weapon.mainhand
tp @e[limit=1,sort=nearest,tag=JacketThrowItemTasks,type=area_effect_cloud] @s

# Weapon swap
function kits:char/jacket/swap/use

# Particles
particle sweep_attack ^ ^1 ^1 0 0 0 0 1 force

# Sound
playsound minecraft:entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 2 1 1

# Reset ability cooldown
scoreboard players set @s kits.ability2CD 0
