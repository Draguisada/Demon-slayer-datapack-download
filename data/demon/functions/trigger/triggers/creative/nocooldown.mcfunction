tag @s[tag=nocooldown] add old_nocooldown
tag @s[tag=!nocooldown] remove old_nocooldown
tag @s[tag=!old_nocooldown] add nocooldown
tellraw @s[tag=!old_nocooldown] {"text":"+No cooldown","color":"green"}
tellraw @s[tag=old_nocooldown] {"text":"-No cooldown","color":"red"}
tag @s[tag=old_nocooldown] remove nocooldown
tag @s remove old_nocooldown
scoreboard players reset @s ds_nocooldown