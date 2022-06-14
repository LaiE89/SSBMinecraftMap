tag @s remove AbianCanSwap
summon armor_stand ~ ~ ~ {Tags:["HydraSwapPositionsWithAbian"],NoGravity:1b,Marker:1b,Small:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583}
tp @s @e[type=armor_stand,tag=AbianHydra,limit=1,sort=nearest]
tp @e[type=armor_stand,tag=AbianHydra,limit=1,sort=nearest] @e[type=armor_stand,tag=HydraSwapPositionsWithAbian,limit=1,sort=nearest]
item replace entity @s weapon.mainhand with carrot_on_a_stick{Unbreakable:1,AbianWeapon:1b,display:{Name:'[{"text":"Rise","italic":false,"color":"light_purple"}]',Lore:['[{"text":"Item Ability: | ","italic":false,"color":"gold"},{"text":"RIGHT CLICK","color":"yellow","bold":true},{"text":"","color":"dark_purple","bold":false}]','[{"text":"Summons a hydra to fight for you.","italic":false,"color":"gray"}]']},CustomModelData:68}