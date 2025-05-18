execute store result score %damage_dealt.armor kits.math run attribute @s minecraft:armor get 100
execute store result score %damage_dealt.armorToughness kits.math run attribute @s minecraft:armor_toughness get 100
scoreboard players set %damage_dealt.damage kits.math 1300

function kits:generic/calc/damage_dealt

execute as @p[tag=ChosenUndead] at @s if score @s kits.criterion.attack >= %damage_dealt.out kits.math run function kits:char/chosenundead/attacksweep
