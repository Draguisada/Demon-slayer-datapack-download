execute if score @s[tag=!cooldown] zenitsuattack matches 1 as @s[tag=!cooldown] run title @s actionbar {"translate":"zenitsu.first.action","color":"yellow","bold": true}
#First form sixfold
execute if score @s[tag=!cooldown] zenitsuattack matches 2 as @s[tag=!cooldown] run title @s actionbar {"translate":"zenitsu.sixfold.action","color":"yellow","bold": true}
#First form eightfold
execute if score @s[tag=!cooldown] zenitsuattack matches 3 as @s[tag=!cooldown] run title @s actionbar {"translate":"zenitsu.eightfold.action","color":"yellow","bold": true}
#First form eightfold
execute if score @s[tag=!cooldown] zenitsuattack matches 4 as @s[tag=!cooldown] run title @s actionbar {"translate":"zenitsu.god.action","color":"yellow","bold": true}

execute as @s[scores={zenitsuattack=5..}] run scoreboard players set @s zenitsuattack 1
tellraw @a[tag=debugrepeat] "action bar zenitsu"