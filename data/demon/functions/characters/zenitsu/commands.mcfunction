#Just to don't kill the player itself when using the forms
#first form
execute as @s[scores={detectclick=1..,zenitsuattack=1},tag=!cooldown] at @s run function demon:breathings/zenitsu/firstform/firstformraycast
#first form sixfold
execute as @s[scores={detectclick=1..,zenitsuattack=2},tag=!cooldown] at @s run function demon:breathings/zenitsu/sixfold/managersixfold
#first form eightfold
execute as @s[scores={detectclick=1..,zenitsuattack=3},tag=!cooldown] at @s run function demon:breathings/zenitsu/eightfold/managersixfold
#first form godspeed
execute as @s[scores={detectclick=1..,zenitsuattack=4},tag=!cooldown] at @s run function demon:breathings/zenitsu/godspeed/manager

tellraw @a[tag=debug] "commands zenitsu"