scoreboard players set @p[tag=Vergil] kits.ability3CD 100
tag @e[tag=VergilForceEdgeKBWall] remove VergilForceEdgeKBWall
particle poof ~ ~ ~ 0.4 1 0.4 0 30 force
playsound minecraft:entity.zombie.attack_iron_door neutral @p[distance=..30]
kill @s
