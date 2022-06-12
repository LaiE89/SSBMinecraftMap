particle minecraft:block minecraft:redstone_block ~ ~1 ~ 0 0 0 0 10
execute if entity @e[type=armor_stand,tag=SitoeCardThrow,scores={Timer2=0}] run effect give @s wither 1 1 true
execute if entity @e[type=armor_stand,tag=SitoeCardThrow,scores={Timer2=1..2}] run function datapack:damage1
execute if entity @e[type=armor_stand,tag=SitoeCardThrow,scores={Timer2=3..4}] run function datapack:damage2
execute if entity @e[type=armor_stand,tag=SitoeCardThrow,scores={Timer2=5..}] run function datapack:damage3