tag @s remove flame
tag @s remove water
tag @s remove zenitsu
tag @s remove sun
tag @s remove beast
tag @s remove sound
tag @s remove none

execute if entity @s[scores={nichirin=100}] run function demon:nichirin/givenichirinnone
execute if entity @s[scores={nichirin=1}] run function demon:nichirin/breathings/flame
execute if entity @s[scores={nichirin=2}] run function demon:nichirin/breathings/water
execute if entity @s[scores={nichirin=3}] run function demon:nichirin/breathings/thunder
execute if entity @s[scores={nichirin=4}] run function demon:nichirin/breathings/tanjiro
execute if entity @s[scores={nichirin=5}] run function demon:nichirin/breathings/beast
execute if entity @s[scores={nichirin=6}] run function demon:nichirin/breathings/sound

execute if entity @s[scores={nichirin=7..99}] run tellraw @s {"text":"Invalid number","color":"red"}
execute if entity @s[scores={nichirin=101..}] run tellraw @s {"text":"Invalid number","color":"red"}
scoreboard players set @s nichirin 0