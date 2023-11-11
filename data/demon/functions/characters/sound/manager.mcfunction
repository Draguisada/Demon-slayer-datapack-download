execute as @s at @s if predicate demon:isnichirinoffhand if predicate demon:isnichirin run function demon:characters/sound/actionbar

execute as @s[scores={ds_detectclick=1..},tag=!cooldown] at @s if predicate demon:isnichirinoffhand if predicate demon:isnichirin run function demon:characters/sound/commands

tellraw @a[tag=debugrepeat] "manager sound"