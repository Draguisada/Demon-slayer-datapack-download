execute as @s at @s if entity @s[scores={step=..50}] rotated 0 90 positioned ^0.5 ^ ^-1 run function demon:breathings/water/seventh/particle
execute as @s at @s if entity @s[scores={step=51..100}] rotated 0 90 positioned ^-0.5 ^ ^-1 run function demon:breathings/water/seventh/particle
execute if entity @s[scores={step=101..}] run scoreboard players set @s step 0


