execute as @e[tag=deadcalm] at @s run damage @s 40 minecraft:player_attack by @a[tag=calm,limit=1,sort=nearest]
tellraw @a[tag=debug] {"text":"damage 40","color":"dark_blue"}


tag @s remove calm
tag @s remove 11form
tag @e[tag=deadcalm] remove deadcalm
attribute @s minecraft:generic.knockback_resistance base set 0
tellraw @a[tag=debug] "dead calm cooldown"