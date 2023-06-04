execute as @s at @s run function demon:characters/giyu/actionbar

execute as @s[scores={detectclick=1..},tag=!cooldown] at @s run function demon:characters/giyu/commands
tellraw @a[tag=debugrepeat] "manager water"