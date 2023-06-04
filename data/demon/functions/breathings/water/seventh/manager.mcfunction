

scoreboard players set @s detectclick 0 
#Set tag just to not cofuse me
tag @s add seventhformwater
#anounce in chat in 60 blocks radious
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"water.seventh.chat","color":"blue"}]
########################DECORATION###########################
execute as @s at @s positioned ^3.5 ^1 ^1 run function demon:breathings/water/seventh/particle
execute as @s at @s positioned ^-3.5 ^1 ^1 run function demon:breathings/water/seventh/particle
execute as @s at @s positioned ^ ^1 ^1 run function demon:breathings/water/seventh/particle
execute as @s at @s positioned ^2 ^ ^1 run function demon:breathings/water/seventh/particle
execute as @s at @s positioned ^-2 ^ ^1 run function demon:breathings/water/seventh/particle
execute as @s at @s positioned ^2 ^2 ^1 run function demon:breathings/water/seventh/particle
execute as @s at @s positioned ^-2 ^2 ^1 run function demon:breathings/water/seventh/particle

summon marker ^ ^ ^1 {Tags:["seventhformwaterbarrier"]}

execute positioned ^ ^2 ^ run fill ^4 ^1 ^1 ^-4 ^-1 ^1 barrier replace air

execute as @e[type=marker,tag=seventhformwaterbarrier] at @s run kill @e[distance=..6,type=#demon:projectile]

###
tellraw @a[tag=debug] "seventh form water"

execute as @s run function demon:breathings/manager/cooldowns/fast

tag @s remove seventhformwater
schedule function demon:breathings/water/seventh/remove 2t