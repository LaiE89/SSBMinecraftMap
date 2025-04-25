execute store result score %damage_dealt.armor kits.math run attribute @s minecraft:armor get 100
execute store result score %damage_dealt.armorToughness kits.math run attribute @s minecraft:armor_toughness get 100
scoreboard players set %damage_dealt.damage kits.math 1000

function kits:generic/calc/damage_dealt

execute if score @p[tag=Noctis] kits.criterion.attack >= %damage_dealt.out kits.math run scoreboard players add @s kits.specific.noctisBleed 63
