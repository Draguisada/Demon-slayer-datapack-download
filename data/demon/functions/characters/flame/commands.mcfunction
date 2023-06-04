#Just to don't kill the player itself when using the forms
execute as @s[scores={detectclick=1..,flameattack=1..6},tag=!cooldown] at @s run tag @s add flameform
#First Form: Unknowing Fire
execute as @s[scores={detectclick=1..,flameattack=1},tag=!cooldown] at @s run function demon:breathings/flame/first/firstform
#Second Form: Rising Scorching Sun
execute as @s[scores={detectclick=1..,flameattack=2},tag=!cooldown] at @s run function demon:breathings/flame/second/secondform
#Third Form: Blazing Universe
execute as @s[scores={detectclick=1..,flameattack=3},tag=!cooldown] at @s run function demon:breathings/flame/third/manager
#Fourth Form: Blooming Flame Undulation
execute as @s[scores={detectclick=1..,flameattack=4},tag=!cooldown] at @s run function demon:breathings/flame/four/manager
#Fifth Form: Flame Tiger 
execute as @s[scores={detectclick=1..,flameattack=5},tag=!cooldown] at @s run function demon:breathings/flame/fifth/manager
#Ninth Form: Rengoku
execute as @s[scores={detectclick=1..,flameattack=6},tag=!cooldown] at @s run function demon:breathings/flame/nine/manager

tellraw @a[tag=debug] "commands flame"