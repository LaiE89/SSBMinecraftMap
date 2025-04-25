scoreboard players add @s kits.timer 1
tp @s[tag=!castedforceedge] ~ ~ ~ facing entity @p[tag=Vergil]
tp @s[scores={kits.timer=..5},tag=castedforceedge] ^ ^ ^-1.25
tag @s[tag=!castedforceedge] add castedforceedge

particle dust{color:[0.000,0.000,0.000],scale:1} ^ ^1.4 ^2 0.1 0 0.1 0 3 force
scoreboard players set @s[scores={kits.timer=..5}] kits.raycastTick2 0
execute at @s[scores={kits.timer=..5}] positioned ~ ~1.5 ~ run function kits:char/vergil/vergilpassive5
execute at @s[scores={kits.timer=..5}] run execute unless block ~ ~ ~ #kits:passable run function kits:char/vergil/forceedgeup
execute as @e[distance=..2.5,type=!#kits:non_entity,tag=!Invincible,tag=!Vergil,tag=!InLabyrinth] at @s run function kits:char/vergil/forceedgedamage
execute as @s[scores={kits.timer=7..}] if entity @p[tag=Vergil,distance=..2.5] run function kits:char/vergil/forceedgepickup

tp @s[scores={kits.timer=8..}] ~ ~ ~ ~30 ~
execute if entity @s[scores={kits.timer=100..}] run tag @e[tag=VergilForceEdgeKBWall] remove VergilForceEdgeKBWall
kill @s[scores={kits.timer=100..}]
