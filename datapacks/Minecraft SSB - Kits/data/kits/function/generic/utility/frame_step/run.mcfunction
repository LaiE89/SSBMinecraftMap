## Runs Frames
# based on frame rate
scoreboard players remove @s kits.frame.rate 1
$execute if score @s kits.frame.rate matches ..0 run function kits:generic/utility/frame_step/step {"frameRate":"$(frameRate)","filepath":"$(filepath)"}