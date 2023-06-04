tp @s ^ ^ ^4
particle flame ~ ~ ~ 1.2 1.2 1.2 0.1 200 normal @a[distance=..30]
execute as @e[type=armor_stand,tag=rengokud] at @s positioned ^0.5 ^1 ^-3.5 run function demon:particles/flame/rengoku/particles
kill @e[distance=..4,type=!#demon:nokill,tag=!rengoku]
tellraw @a[tag=debugrepeat] "manager nine in flame"