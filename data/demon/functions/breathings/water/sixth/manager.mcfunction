

scoreboard players set @s ds_detectclick 0 
#Set tag just to not cofuse me
tag @s add sixthformwater
#anounce in chat in 60 blocks radious
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"water.sixth.chat","color":"blue"}]
########################DECORATION###########################
execute as @s at @s rotated 0 0 positioned ~ ~-2.4 ~ run function demon:breathings/water/sixth/particles

tag @e[type=!#demon:nokill,distance=..2] add 6wf

effect give @e[type=!#demon:nokill,distance=..2,tag=!sixthformwater] slowness 5 4 false
effect give @e[type=!#demon:nokill,distance=..2,tag=!sixthformwater] blindness 2 4 false

###
tellraw @a[tag=debug] "sixth form water"

execute as @s run function demon:breathings/manager/cooldowns/fast

execute as @e[tag=6wf,type=!#demon:nokill] at @s run damage @s 10 minecraft:player_attack by @a[tag=sixthformwater,limit=1,sort=nearest]

tag @s remove sixthformwater
tag @e[tag=6wf] remove 6wf

tellraw @a[tag=debug] {"text":"damage 5","color":"blue"}
