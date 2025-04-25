# Compares User's Drawing With Ice
scoreboard players operation %SirisMagicDataTemp kits.x -= %SirisMagicDataTemp kits.y
execute if score %SirisMagicDataTemp kits.x matches -2..2 if score %SirisMagicDataTemp kits.dx matches 1 if score %SirisMagicDataTemp kits.dy matches 1 run function kits:char/siris/blade/magic/spells/ice/use
function kits:char/siris/blade/magic/identify/reset
