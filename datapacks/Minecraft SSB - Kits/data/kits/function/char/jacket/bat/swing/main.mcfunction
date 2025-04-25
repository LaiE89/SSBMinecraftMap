## Execute at Bat Swing AEC
# Rotation
execute positioned as @p[tag=Jacket] run tp @s[tag=JacketBatSwingLeft] ~ ~ ~ ~25 ~
execute positioned as @p[tag=Jacket] run tp @s[tag=JacketBatSwingRight] ~ ~ ~ ~-25 ~

# Collision detection
scoreboard players set @s kits.raycastTick 0
function kits:char/jacket/bat/swing/raycast

# Particles
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.2894737 ^1 ^4.0394737 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.2894737 ^1 ^4.1842105 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.2894737 ^1 ^4.3289474 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.2894737 ^1 ^4.4736842 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.2894737 ^1 ^4.6184211 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.2894737 ^1 ^4.7631579 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.2894737 ^1 ^4.9078947 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.2894737 ^1 ^5.0526316 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.2894737 ^1 ^5.1973684 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.2894737 ^1 ^5.3421053 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.2894737 ^1 ^5.4868421 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.2894737 ^1 ^5.6315789 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.2894737 ^1 ^5.7763158 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.2894737 ^1 ^5.9210526 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.2894737 ^1 ^6.0657895 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.2894737 ^1 ^6.2105263 0 0 0 0 1 force
particle dust{color:[0.502,0.290,0.039],scale:0.75} ^0.1447368 ^1 ^1.5789474 0 0 0 0 1 force
particle dust{color:[0.502,0.290,0.039],scale:0.75} ^0.1447368 ^1 ^1.7236842 0 0 0 0 1 force
particle dust{color:[0.820,0.820,0.820],scale:0.75} ^0.1447368 ^1 ^1.8684211 0 0 0 0 1 force
particle dust{color:[0.820,0.820,0.820],scale:0.75} ^0.1447368 ^1 ^2.0131579 0 0 0 0 1 force
particle dust{color:[0.502,0.290,0.039],scale:0.75} ^0.1447368 ^1 ^2.1578947 0 0 0 0 1 force
particle dust{color:[0.820,0.820,0.820],scale:0.75} ^0.1447368 ^1 ^2.3026316 0 0 0 0 1 force
particle dust{color:[0.502,0.290,0.039],scale:0.75} ^0.1447368 ^1 ^2.4473684 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.1447368 ^1 ^2.5921053 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.1447368 ^1 ^2.7368421 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.1447368 ^1 ^2.8815789 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.1447368 ^1 ^3.0263158 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.1447368 ^1 ^3.1710526 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.1447368 ^1 ^3.3157895 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.1447368 ^1 ^3.4605263 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.1447368 ^1 ^3.6052632 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.1447368 ^1 ^3.75 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.1447368 ^1 ^3.8947368 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0.1447368 ^1 ^4.0394737 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0.1447368 ^1 ^4.1842105 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0.1447368 ^1 ^4.3289474 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0.1447368 ^1 ^4.4736842 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0.1447368 ^1 ^4.6184211 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0.1447368 ^1 ^4.7631579 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0.1447368 ^1 ^4.9078947 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0.1447368 ^1 ^5.0526316 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0.1447368 ^1 ^5.1973684 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0.1447368 ^1 ^5.3421053 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0.1447368 ^1 ^5.4868421 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0.1447368 ^1 ^5.6315789 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0.1447368 ^1 ^5.7763158 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0.1447368 ^1 ^5.9210526 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0.1447368 ^1 ^6.0657895 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.1447368 ^1 ^6.2105263 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0.1447368 ^1 ^6.3552632 0 0 0 0 1 force
particle dust{color:[0.502,0.290,0.039],scale:0.75} ^0 ^1 ^1.5789474 0 0 0 0 1 force
particle dust{color:[0.992,0.992,0.992],scale:0.75} ^0 ^1 ^1.7236842 0 0 0 0 1 force
particle dust{color:[0.502,0.290,0.039],scale:0.75} ^0 ^1 ^1.8684211 0 0 0 0 1 force
particle dust{color:[0.992,0.992,0.992],scale:0.75} ^0 ^1 ^2.0131579 0 0 0 0 1 force
particle dust{color:[0.502,0.290,0.039],scale:0.75} ^0 ^1 ^2.1578947 0 0 0 0 1 force
particle dust{color:[0.992,0.992,0.992],scale:0.75} ^0 ^1 ^2.3026316 0 0 0 0 1 force
particle dust{color:[0.502,0.290,0.039],scale:0.75} ^0 ^1 ^2.4473684 0 0 0 0 1 force
particle dust{color:[0.820,0.478,0.000],scale:0.75} ^0 ^1 ^2.5921053 0 0 0 0 1 force
particle dust{color:[1.000,0.773,0.451],scale:0.75} ^0 ^1 ^2.7368421 0 0 0 0 1 force
particle dust{color:[1.000,0.773,0.451],scale:0.75} ^0 ^1 ^2.8815789 0 0 0 0 1 force
particle dust{color:[1.000,0.773,0.451],scale:0.75} ^0 ^1 ^3.0263158 0 0 0 0 1 force
particle dust{color:[1.000,0.773,0.451],scale:0.75} ^0 ^1 ^3.1710526 0 0 0 0 1 force
particle dust{color:[1.000,0.773,0.451],scale:0.75} ^0 ^1 ^3.3157895 0 0 0 0 1 force
particle dust{color:[1.000,0.773,0.451],scale:0.75} ^0 ^1 ^3.4605263 0 0 0 0 1 force
particle dust{color:[1.000,0.773,0.451],scale:0.75} ^0 ^1 ^3.6052632 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0 ^1 ^3.75 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0 ^1 ^3.8947368 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0 ^1 ^4.0394737 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0 ^1 ^4.1842105 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0 ^1 ^4.3289474 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0 ^1 ^4.4736842 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0 ^1 ^4.6184211 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0 ^1 ^4.7631579 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0 ^1 ^4.9078947 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0 ^1 ^5.0526316 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0 ^1 ^5.1973684 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0 ^1 ^5.3421053 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0 ^1 ^5.4868421 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0 ^1 ^5.6315789 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0 ^1 ^5.7763158 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0 ^1 ^5.9210526 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^0 ^1 ^6.0657895 0 0 0 0 1 force
particle dust{color:[1.000,0.773,0.451],scale:0.75} ^0 ^1 ^6.2105263 0 0 0 0 1 force
particle dust{color:[1.000,0.773,0.451],scale:0.75} ^0 ^1 ^6.3552632 0 0 0 0 1 force
particle dust{color:[1.000,0.773,0.451],scale:0.75} ^-0.1447368 ^1 ^4.3289474 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^-0.1447368 ^1 ^4.4736842 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^-0.1447368 ^1 ^4.6184211 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^-0.1447368 ^1 ^4.7631579 0 0 0 0 1 force
particle dust{color:[1.000,0.773,0.451],scale:0.75} ^-0.1447368 ^1 ^4.9078947 0 0 0 0 1 force
particle dust{color:[1.000,0.773,0.451],scale:0.75} ^-0.1447368 ^1 ^5.0526316 0 0 0 0 1 force
particle dust{color:[1.000,0.773,0.451],scale:0.75} ^-0.1447368 ^1 ^5.1973684 0 0 0 0 1 force
particle dust{color:[1.000,0.773,0.451],scale:0.75} ^-0.1447368 ^1 ^5.3421053 0 0 0 0 1 force
particle dust{color:[1.000,0.773,0.451],scale:0.75} ^-0.1447368 ^1 ^5.4868421 0 0 0 0 1 force
particle dust{color:[1.000,0.773,0.451],scale:0.75} ^-0.1447368 ^1 ^5.6315789 0 0 0 0 1 force
particle dust{color:[1.000,0.773,0.451],scale:0.75} ^-0.1447368 ^1 ^5.7763158 0 0 0 0 1 force
particle dust{color:[1.000,0.773,0.451],scale:0.75} ^-0.1447368 ^1 ^5.9210526 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^-0.1447368 ^1 ^6.0657895 0 0 0 0 1 force
particle dust{color:[1.000,0.612,0.098],scale:0.75} ^-0.1447368 ^1 ^6.2105263 0 0 0 0 1 force
