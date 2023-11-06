execute as @s at @s run function demon:characters/sun/actionbar

execute as @s[scores={ds_detectclick=1..},tag=!cooldown] at @s run function demon:characters/sun/commands

tellraw @a[tag=debugrepeat] "manager sun"