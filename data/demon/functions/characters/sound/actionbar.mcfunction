
execute if score @s[tag=!cooldown] ds_soundattack matches 1 as @s[tag=!cooldown] run title @s actionbar {"translate":"sound.first.action","color":"white","bold": true}


execute if score @s[tag=!cooldown] ds_soundattack matches 2 as @s[tag=!cooldown] run title @s actionbar {"translate":"sound.fourth.action","color":"white","bold": true}


execute if score @s[tag=!cooldown] ds_soundattack matches 3 as @s[tag=!cooldown] run title @s actionbar {"translate":"sound.fifth.action","color":"white","bold": true}



execute as @s[scores={ds_soundattack=4..}] run scoreboard players set @s ds_soundattack 1

tellraw @a[tag=debugrepeat] "action bar sound"