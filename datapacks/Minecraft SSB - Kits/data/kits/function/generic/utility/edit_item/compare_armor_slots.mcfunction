scoreboard players reset %edit_item_offhand kits.constant
scoreboard players reset %edit_item_head kits.constant
scoreboard players reset %edit_item_chest kits.constant
scoreboard players reset %edit_item_legs kits.constant
scoreboard players reset %edit_item_feet kits.constant

# Compare armor slots with old item
data modify storage kits:edit_item item.temp set from entity @s equipment.offhand
execute store result score %edit_item_offhand kits.constant run data modify storage kits:edit_item item.temp merge from storage kits:edit_item item.oldItem
data remove storage kits:edit_item item.temp

data modify storage kits:edit_item item.temp set from entity @s equipment.head
execute store result score %edit_item_head kits.constant run data modify storage kits:edit_item item.temp merge from storage kits:edit_item item.oldItem
data remove storage kits:edit_item item.temp

data modify storage kits:edit_item item.temp set from entity @s equipment.chest
execute store result score %edit_item_chest kits.constant run data modify storage kits:edit_item item.temp merge from storage kits:edit_item item.oldItem
data remove storage kits:edit_item item.temp

data modify storage kits:edit_item item.temp set from entity @s equipment.legs
execute store result score %edit_item_legs kits.constant run data modify storage kits:edit_item item.temp merge from storage kits:edit_item item.oldItem
data remove storage kits:edit_item item.temp

data modify storage kits:edit_item item.temp set from entity @s equipment.feet
execute store result score %edit_item_feet kits.constant run data modify storage kits:edit_item item.temp merge from storage kits:edit_item item.oldItem
data remove storage kits:edit_item item.temp

# Update slot depending on which slot matched old item
execute if score %edit_item_offhand kits.constant matches 0 run data modify storage kits:edit_item item.slot set value "weapon.offhand"
execute if score %edit_item_head kits.constant matches 0 run data modify storage kits:edit_item item.slot set value "armor.head"
execute if score %edit_item_chest kits.constant matches 0 run data modify storage kits:edit_item item.slot set value "armor.chest"
execute if score %edit_item_legs kits.constant matches 0 run data modify storage kits:edit_item item.slot set value "armor.legs"
execute if score %edit_item_feet kits.constant matches 0 run data modify storage kits:edit_item item.slot set value "armor.feet"

scoreboard players reset %edit_item_offhand kits.constant
scoreboard players reset %edit_item_head kits.constant
scoreboard players reset %edit_item_chest kits.constant
scoreboard players reset %edit_item_legs kits.constant
scoreboard players reset %edit_item_feet kits.constant