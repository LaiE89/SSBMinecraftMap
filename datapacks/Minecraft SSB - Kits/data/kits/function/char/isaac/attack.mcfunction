## Execute at Enemy When Attacked by Isaac
# Item drops passive
function kits:char/isaac/item_drops/drop

# Isaac stomps on the enemy if it is within 2 blocks of him
execute if entity @p[distance=..2.5,tag=Isaac] run function kits:char/isaac/stomp
