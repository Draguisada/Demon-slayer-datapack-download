#Just to don't kill the player itself when using the forms
#execute as @s[scores={detectclick=1..,beastattack=1..6},tag=!cooldown] at @s run tag @s add beastform
#
execute as @s[scores={detectclick=1..,beastattack=1},tag=!cooldown] at @s run function demon:breathings/beast/first/manager
#
execute as @s[scores={detectclick=1..,beastattack=2},tag=!cooldown] at @s run function demon:breathings/beast/second/manager
#
execute as @s[scores={detectclick=1..,beastattack=3},tag=!cooldown] at @s run function demon:breathings/beast/third/manager
#
execute as @s[scores={detectclick=1..,beastattack=4},tag=!cooldown] at @s run function demon:breathings/beast/fourth/manager
#
execute as @s[scores={detectclick=1..,beastattack=5},tag=!cooldown] at @s run function demon:breathings/beast/fifth/manager
#
execute as @s[scores={detectclick=1..,beastattack=6},tag=!cooldown] at @s run function demon:breathings/beast/sixth/manager
#
execute as @s[scores={detectclick=1..,beastattack=7},tag=!cooldown] at @s run function demon:breathings/beast/seventh/manager
#
execute as @s[scores={detectclick=1..,beastattack=8},tag=!cooldown] at @s run function demon:breathings/beast/eight/manager

tellraw @a[tag=debug] "commands beast"