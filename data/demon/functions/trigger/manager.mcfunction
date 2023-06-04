schedule function demon:trigger/manager 20t

execute as @a[gamemode=creative] run function demon:trigger/enablec
execute as @a at @s if entity @s[scores={helpbook=1..}] run function demon:trigger/triggers/book
execute as @a at @s if entity @s[scores={statusbook=1..}] run function demon:trigger/triggers/statusbook
execute as @a at @s if entity @s[scores={feedback=1..}] run function demon:trigger/triggers/feedback
execute as @a at @s if entity @s[scores={bugreport=1..}] run function demon:trigger/triggers/feedback
execute as @a[gamemode=creative] at @s if entity @s[scores={nichirin=1..}] run function demon:trigger/triggers/creative/nichirin
execute as @a[gamemode=creative] at @s if entity @s[scores={helpcreative=1..}] run function demon:trigger/triggers/creative/help
execute as @a at @s if entity @s[scores={maker=1..}] run function demon:trigger/triggers/creative/maker