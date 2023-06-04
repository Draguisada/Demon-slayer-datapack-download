scoreboard players set @s detectclick 0
execute as @s at @s if entity @s[scores={math=0..10}] run function demon:nichirin/breathings/water
execute as @s at @s if entity @s[scores={math=11..20}] run function demon:nichirin/breathings/thunder
execute as @s at @s if entity @s[scores={math=21..30}] run function demon:nichirin/breathings/flame
execute as @s at @s if entity @s[scores={math=31..40}] run function demon:nichirin/breathings/water
execute as @s at @s if entity @s[scores={math=41..50}] run function demon:nichirin/breathings/thunder
execute as @s at @s if entity @s[scores={math=51..60}] run function demon:nichirin/breathings/flame
execute as @s at @s if entity @s[scores={math=61..70}] run function demon:nichirin/breathings/water
execute as @s at @s if entity @s[scores={math=71..80}] run function demon:nichirin/breathings/thunder
execute as @s at @s if entity @s[scores={math=81..90}] run function demon:nichirin/breathings/flame
execute as @s at @s if entity @s[scores={math=91..94}] run function demon:nichirin/breathings/thunder
execute as @s at @s if entity @s[scores={math=95..100}] run function demon:nichirin/breathings/tanjiro
tag @s add nichirinset
tellraw @a[tag=debug] "set nichirin"


