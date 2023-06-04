execute as @s at @s run function math:rng/range
scoreboard players operation @s math = out math
tag @s remove none
execute as @s at @s run function demon:nichirin/setnichirin
tellraw @a[tag=debug] "set element nichirin"