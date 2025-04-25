# Example usage: /function kits:generic/utility/edit_item/replace/run {item:'{id:"minecraft:iron_sword",components:{"minecraft:custom_name":{"text":"Kusabimaru","italic":false,"color":"gold"}}}',newItem:'"diamond[custom_name=\\"dwadwadwa\\"]"'}
# Note the \\ before every " in the newItem
$function kits:generic/utility/edit_item/find {item:$(item)}

# Add new item data to storage
$execute if data storage kits:edit_item item run data modify storage kits:edit_item item.newItem set value $(newItem)

# Actually replace the item
execute unless data storage kits:edit_item item.slot run return 1
return run function kits:generic/utility/edit_item/replace/replace with storage kits:edit_item item
