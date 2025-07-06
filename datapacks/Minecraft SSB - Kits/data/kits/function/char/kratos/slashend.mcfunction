#execute unless entity @e[tag=KratosSlashed] run scoreboard players set @p[tag=Kratos] kits.timer 0
#execute if entity @e[tag=KratosSlashed] run scoreboard players add @p[tag=Kratos,scores={kits.timer=..2}] kits.timer 1
#execute if entity @e[tag=KratosSlashed] run scoreboard players set @p[tag=Kratos,scores={kits.timer=3..}] kits.timer 0
schedule clear kits:char/kratos/slashend
attribute @p[tag=Kratos] minecraft:attack_speed modifier remove attackspeed.slash.kratos
scoreboard players add @p[tag=Kratos] kits.timer 1
scoreboard players set @p[tag=Kratos] kits.ability1CD 100
scoreboard players set @p[tag=Kratos,scores={kits.timer=5..}] kits.timer 0
tag @e[tag=KratosSlashed] remove KratosSlashed
kill @e[type=armor_stand,tag=kratosblade]
