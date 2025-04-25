# Compares User's Drawing With Holy
scoreboard players operation %SirisMagicDataTemp kits.dx -= %SirisMagicDataTemp kits.dy
scoreboard players operation %SirisMagicDataTemp kits.x -= %SirisMagicDataTemp kits.y
execute if score %SirisMagicDataTemp kits.x matches -3..3 if score %SirisMagicDataTemp kits.dx matches -1..1 run function kits:char/siris/blade/magic/spells/holy/use
function kits:char/siris/blade/magic/identify/reset
