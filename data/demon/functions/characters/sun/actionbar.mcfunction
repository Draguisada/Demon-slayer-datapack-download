#First form enbu/dance
execute if score @s[tag=!cooldown] ds_tanjiroattack matches 1 as @s[tag=!cooldown] run title @s actionbar {"translate":"sun.first.action","color":"gold","bold": true}
#second form heki-ra no ten/Clear Blue Sky
execute if score @s[tag=!cooldown] ds_tanjiroattack matches 2 as @s[tag=!cooldown] run title @s actionbar {"translate":"sun.second.action","color":"gold","bold": true}
#third form raging sun
execute if score @s[tag=!cooldown] ds_tanjiroattack matches 3 as @s[tag=!cooldown] run title @s actionbar {"translate":"sun.third.action","color":"gold","bold": true}
#fourth form burning bones, summer sun
execute if score @s[tag=!cooldown] ds_tanjiroattack matches 4 as @s[tag=!cooldown] run title @s actionbar {"translate":"sun.fourth.action","color":"gold","bold": true}
#tenth form kasha/fire wheel
execute if score @s[tag=!cooldown] ds_tanjiroattack matches 5 as @s[tag=!cooldown] run title @s actionbar {"translate":"sun.tenth.action","color":"gold","bold": true}
#eleventh form fake rainbow
execute if score @s[tag=!cooldownrainbow] ds_tanjiroattack matches 6 as @s[tag=!cooldown] run title @s actionbar {"translate":"sun.eleventh.action","color":"gold","bold": true}
#twelve form flame dance
execute if score @s[tag=!cooldown] ds_tanjiroattack matches 7 as @s[tag=!cooldown] run title @s actionbar {"translate":"sun.twelve.action","color":"gold","bold": true}

execute as @s[scores={ds_tanjiroattack=8..}] run scoreboard players set @s ds_tanjiroattack 1
tellraw @a[tag=debugrepeat] "action bar sun"