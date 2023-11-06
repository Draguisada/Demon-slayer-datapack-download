tag @s add nichirinset
tag @s remove flame
tag @s remove water
tag @s remove zenitsu
tag @s remove sun
tag @s remove beast
tag @s remove sound
tag @s remove none

execute if entity @s[scores={ds_nichirin=100}] run function demon:nichirin/givenichirinnone
execute if entity @s[scores={ds_nichirin=1}] run function demon:nichirin/breathings/flame
execute if entity @s[scores={ds_nichirin=2}] run function demon:nichirin/breathings/water
execute if entity @s[scores={ds_nichirin=3}] run function demon:nichirin/breathings/thunder
execute if entity @s[scores={ds_nichirin=4}] run function demon:nichirin/breathings/tanjiro
execute if entity @s[scores={ds_nichirin=5}] run function demon:nichirin/breathings/beast
execute if entity @s[scores={ds_nichirin=6}] run function demon:nichirin/breathings/sound

execute if entity @s[scores={ds_nichirin=7..99}] run tellraw @s {"text":"Invalid number","color":"red"}
execute if entity @s[scores={ds_nichirin=101..}] run tellraw @s {"text":"Invalid number","color":"red"}
scoreboard players set @s ds_nichirin 0