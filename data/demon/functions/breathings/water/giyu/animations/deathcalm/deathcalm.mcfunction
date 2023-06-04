scoreboard players set @s[scores={detectclick=1..}] detectclick 0
tag @s add calm
attribute @s minecraft:generic.knockback_resistance base set 100
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"water.calm.chat","bold": true,"color":"blue"}]
execute at @s run effect give @s minecraft:jump_boost 3 250 true
execute at @s run effect give @s minecraft:slowness 3 255 true
execute at @s run effect give @s minecraft:resistance 3 200 true

execute at @s run particle minecraft:falling_water ~ ~0.1 ~ 1.9 0 1.9 0 100 normal @a
execute at @s run particle minecraft:dripping_dripstone_water ~ ~0 ~ 2.4 0 2.4 0 200 normal @a
execute at @s run particle minecraft:dripping_water ~ ~0.1 ~ 1.9 0 1.9 0 100 normal @a
execute at @s run particle dolphin ~ ~0.1 ~ 1.9 0 1.9 0.4 300 normal @a
execute at @s run particle minecraft:fishing ~ ~0.2 ~ 1.9 0 1.9 0 200 normal @a

tag @e[distance=..4.5,tag=!calm,type=!#demon:nokill] add kill

execute as @s run function demon:breathings/manager/cooldowns/sslow

##Tried to use scoreboard timer but didn't work :(
schedule function demon:breathings/water/giyu/animations/deathcalm/manager 44t

tellraw @a[tag=debug] "dead calm"