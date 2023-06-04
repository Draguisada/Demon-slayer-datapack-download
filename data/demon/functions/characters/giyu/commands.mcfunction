#1th form
execute as @s[scores={detectclick=1..,giyuattack=1},tag=!cooldown] at @s run function demon:breathings/water/first/manager
#2th form
execute as @s[scores={detectclick=1..,giyuattack=2},tag=!cooldown] at @s run function demon:breathings/water/second/manager
#3th form
execute as @s[scores={detectclick=1..,giyuattack=3},tag=!cooldown] at @s run function demon:breathings/water/third/manager
#4th form
execute as @s[scores={detectclick=1..,giyuattack=4},tag=!cooldown] at @s run function demon:breathings/water/four/manager
#5th form
execute as @s[scores={detectclick=1..,giyuattack=5},tag=!cooldown] at @s run function demon:breathings/water/fifth/manager
#6th form
execute as @s[scores={detectclick=1..,giyuattack=6},tag=!cooldown] at @s run function demon:breathings/water/sixth/manager
#7th form
execute as @s[scores={detectclick=1..,giyuattack=7},tag=!cooldown] at @s run function demon:breathings/water/seventh/manager
#8th form
execute as @s[scores={detectclick=1..,giyuattack=8},tag=!cooldown] at @s run function demon:breathings/water/eight/manager
#9th form
execute as @s[scores={detectclick=1..,giyuattack=9},tag=!cooldown] at @s run function demon:breathings/water/ninth/manager
#10th form
execute as @s[scores={detectclick=1..,giyuattack=10},tag=!cooldown] at @s run function demon:breathings/water/10form/manager
#giyu 11th form
execute as @s[scores={detectclick=1..,giyuattack=11},tag=!cooldown,tag=hashira] at @s run function demon:breathings/water/giyu/animations/deathcalm/deathcalm


tellraw @a[tag=debug] "commands water"