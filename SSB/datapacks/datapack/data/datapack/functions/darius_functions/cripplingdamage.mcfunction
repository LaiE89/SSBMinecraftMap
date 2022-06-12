effect give @s minecraft:slowness 1 2 true
function datapack:damage1
playsound minecraft:entity.player.attack.crit neutral @a[distance=..10] ~ ~ ~ 3 0.5 1
particle minecraft:block minecraft:redstone_block ~ ~1 ~ 0.4 0.5 0.4 0 50
scoreboard players add @s DariusPassive 1
execute if entity @a[tag=DariusRage] if entity @s[scores={DariusPassive=..4}] run scoreboard players set @s DariusPassive 5