kill @e[tag=kill,type=!#demon:nokill]
scoreboard players set @s ds_detectclick 0 
#Set tag just to not cofuse me
tag @s add thirdformwater
#anounce in chat in 60 blocks radious
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"water.third.chat","color":"blue"}]
########################DECORATION###########################

#Raycast
scoreboard players set @s ds_range 10

execute as @s at @s positioned ~ ~1.3 ~ run function demon:raycast/water/third/raycast
###
tellraw @a[tag=debug] "third form water"

execute as @s run function demon:breathings/manager/cooldowns/medium

execute as @e[tag=kill,type=!#demon:nokill] at @s rotated ~90 0 positioned ^ ^1.5 ^ run function demon:breathings/water/third/particles

execute as @e[tag=kill,type=!#demon:nokill] run tag @e[type=!#demon:nokill,distance=..2.3,tag=!thirdformwater] add kill

execute as @e[tag=waterthirdend] at @s rotated as @a[tag=thirdformwater] run tp ~ ~ ~
tp @s @e[tag=waterthirdend,type=armor_stand,limit=1]
kill @e[type=armor_stand,tag=waterthirdend]

execute as @e[tag=kill,type=!#demon:nokill] at @s run damage @s 20 minecraft:player_attack by @a[tag=thirdformwater,limit=1,sort=nearest]

tellraw @a[tag=debug] {"text":"damage 20","color":"blue"}

tag @s remove thirdformwater