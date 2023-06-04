
execute if score @s[tag=!cooldown] beastattack matches 1 as @s[tag=!cooldown] run title @s actionbar {"translate":"beast.first.action","color":"gray","bold": true}


execute if score @s[tag=!cooldown] beastattack matches 2 as @s[tag=!cooldown] run title @s actionbar {"translate":"beast.second.action","color":"gray","bold": true}


execute if score @s[tag=!cooldown] beastattack matches 3 as @s[tag=!cooldown] run title @s actionbar {"translate":"beast.third.action","color":"gray","bold": true}


execute if score @s[tag=!cooldown] beastattack matches 4 as @s[tag=!cooldown] run title @s actionbar {"translate":"beast.fourth.action","color":"gray","bold": true}


execute if score @s[tag=!cooldown] beastattack matches 5 as @s[tag=!cooldown] run title @s actionbar {"translate":"beast.fifth.action","color":"gray","bold": true}


execute if score @s[tag=!cooldown] beastattack matches 6 as @s[tag=!cooldown] run title @s actionbar {"translate":"beast.sixth.action","color":"gray","bold": true}


execute if score @s[tag=!cooldown] beastattack matches 7 as @s[tag=!cooldown] run title @s actionbar {"translate":"beast.seventh.action","color":"gray","bold": true}


execute if score @s[tag=!cooldown] beastattack matches 8 as @s[tag=!cooldown] run title @s actionbar {"translate":"beast.eight.action","color":"gray","bold": true}


execute as @s[scores={beastattack=9..}] run scoreboard players set @s beastattack 1

tellraw @a[tag=debugrepeat] "action bar beast"