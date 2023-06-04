execute as @a[tag=rainbow] at @s run tp ^ ^ ^5
execute as @a[tag=rainbow] run scoreboard players set @s tanjiroattack 5
effect give @a[tag=rainbow] minecraft:levitation 1 255 true
execute as @a[tag=rainbow] run function demon:bugfixer/flyingintheair/giveattribute


execute as @a[tag=rainbow] run tag @s remove rainbow
