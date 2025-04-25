# Example usage: /function kits:generic/utility/edit_item/modify/run {item:'{id:"minecraft:iron_sword",components:{"minecraft:custom_name":{"text":"Kusabimaru","italic":false,"color":"gold"}}}',newModifier:'"kits:test"'}
$function kits:generic/utility/edit_item/find {item:$(item)}

# Add new item data to storage
$execute if data storage kits:edit_item item run data modify storage kits:edit_item item.newModifier set value $(newModifier)

# Actually replace the item
execute unless data storage kits:edit_item item.slot run return 1
return run function kits:generic/utility/edit_item/modify/modify with storage kits:edit_item item
