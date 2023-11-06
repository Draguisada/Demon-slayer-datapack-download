#First Form: Unknowing Fire
execute if score @s[tag=!cooldown] ds_flameattack matches 1 as @s[tag=!cooldown] run title @s actionbar {"translate":"flame.first.action","color":"red","bold": true}

#Second Form: Rising Scorching Sun
execute if score @s[tag=!cooldown] ds_flameattack matches 2 as @s[tag=!cooldown] run title @s actionbar {"translate":"flame.second.action","color":"red","bold": true}

#Third Form: Blazing Universe
execute if score @s[tag=!cooldown] ds_flameattack matches 3 as @s[tag=!cooldown] run title @s actionbar {"translate":"flame.third.action","color":"red","bold": true}

#Fourth Form: Blooming Flame Undulation
execute if score @s[tag=!cooldown] ds_flameattack matches 4 as @s[tag=!cooldown] run title @s actionbar {"translate":"flame.four.action","color":"red","bold": true}

#Fifth Form: Flame Tiger 
execute if score @s[tag=!cooldown] ds_flameattack matches 5 as @s[tag=!cooldown] run title @s actionbar {"translate":"flame.fifth.action","color":"red","bold": true}

#Ninth Form: Rengoku
execute if score @s[tag=!cooldown] ds_flameattack matches 6 as @s[tag=!cooldown] run title @s actionbar {"translate":"flame.rengoku.action","color":"red","bold": true}


execute as @s[scores={ds_flameattack=7..}] run scoreboard players set @s ds_flameattack 1

tellraw @a[tag=debugrepeat] "action bar flame"