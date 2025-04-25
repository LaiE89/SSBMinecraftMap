data remove storage kits:edit_item item

# Check if in inventory
$data modify storage kits:edit_item item.slot set from entity @s Inventory[$(item)].Slot
execute if data storage kits:edit_item item.slot run function kits:generic/utility/edit_item/concat_container with storage kits:edit_item item

# Check if in armor slots
$execute unless data storage kits:edit_item item.slot run data modify storage kits:edit_item item.oldItem set value $(item)
execute unless data storage kits:edit_item item.slot run function kits:generic/utility/edit_item/compare_armor_slots
