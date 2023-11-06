clear @s minecraft:carrot_on_a_stick{isNichirin:1b}
tag @s remove none
execute as @s at @s run function demon:nichirin/wip
tellraw @a[tag=debug] "set element nichirin"