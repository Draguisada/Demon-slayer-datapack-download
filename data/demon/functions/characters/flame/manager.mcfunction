execute as @s at @s run function demon:characters/flame/actionbar

execute as @s[scores={detectclick=1..},tag=!cooldown] at @s run function demon:characters/flame/commands

tellraw @a[tag=debugrepeat] "manager flame"