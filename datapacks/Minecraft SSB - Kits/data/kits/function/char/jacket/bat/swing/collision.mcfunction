## Execute at Entities Hit by Swing
# If entity is a mob/player
execute if entity @s[tag=!InLabyrinth,tag=!projectile,type=!#kits:non_entity,tag=!Invincible] run function kits:char/jacket/bat/swing/entity_hit

# If entity is a projectile
execute if entity @s[tag=!JacketBatSwingDeflected,tag=projectile] run function kits:char/jacket/bat/swing/deflect/projectile
execute if entity @s[tag=!JacketBatSwingDeflected,type=#arrows] run function kits:char/jacket/bat/swing/deflect/arrow
