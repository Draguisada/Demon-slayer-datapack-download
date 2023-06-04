execute as @s at @s if predicate demon:isnichirinoffhand if predicate demon:isnichirin run function demon:characters/beast/actionbar

execute as @s[scores={detectclick=1..},tag=!cooldown] at @s if predicate demon:isnichirinoffhand if predicate demon:isnichirin run function demon:characters/beast/commands

tellraw @a[tag=debugrepeat] "manager beast"