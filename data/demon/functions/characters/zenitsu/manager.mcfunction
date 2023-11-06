execute as @s at @s run function demon:characters/zenitsu/actionbar

execute as @s[scores={ds_detectclick=1..},tag=!cooldown] at @s run function demon:characters/zenitsu/commands

tellraw @a[tag=debugrepeat] "manager zenitsu"