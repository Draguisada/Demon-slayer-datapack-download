execute as @s at @s run particle splash ~ ~0.1 ~ 2.1 0 2.1 0 600 normal @s
tag @e[distance=..4.5,tag=!calm,type=!#demon:nokill] add kill
tellraw @a[tag=debugrepeat] "dead calm particles"