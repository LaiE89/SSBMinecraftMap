execute as @p[tag=Sekiro] at @s run function kits:generic/utility/edit_item/modify/run {item:'{id:"minecraft:iron_sword",components:{"minecraft:custom_name":{"text":"Kusabimaru","italic":false,"color":"gold"}}}',newModifier:'"kits:character_specific/sekiro_reset_anim"'}
schedule clear kits:char/sekiro/deflect/resetanim
