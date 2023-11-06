schedule function demon:trigger/manager 20t

execute as @a[gamemode=creative] run function demon:trigger/enablec
execute as @a at @s if entity @s[scores={ds_helpbook=1..}] run function demon:trigger/triggers/book
execute as @a at @s if entity @s[scores={ds_feedback=1..}] run function demon:trigger/triggers/feedback
execute as @a at @s if entity @s[scores={ds_bugreport=1..}] run function demon:trigger/triggers/feedback
execute as @a at @s if entity @s[scores={ds_nichirin=1..}] run function demon:trigger/triggers/creative/nichirin
execute as @a[gamemode=creative] at @s if entity @s[scores={ds_helpcreative=1..}] run function demon:trigger/triggers/creative/help
execute as @a at @s if entity @s[scores={ds_maker=1..}] run function demon:trigger/triggers/creative/maker
execute as @a[gamemode=creative] at @s if entity @s[scores={ds_nocooldown=1..}] run function demon:trigger/triggers/creative/nocooldown