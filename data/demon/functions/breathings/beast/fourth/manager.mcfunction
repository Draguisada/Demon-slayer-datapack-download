scoreboard players set @s ds_detectclick 0 
#Set tag just to not cofuse me
tag @s add fourthbeast
#anounce in chat in 60 blocks radious
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"beast.fourth.chat","color":"gray"}]
########################DECORATION###########################
#particle
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 2
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 2
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 1

execute rotated as @s rotated ~90 ~ positioned ^ ^ ^-2.5 run function demon:particles/beast/fourth/manager
execute rotated as @s rotated ~90 ~ positioned ^ ^ ^-1.8 run function demon:particles/beast/fourth/manager
execute rotated as @s rotated ~90 ~ positioned ^ ^ ^-1 run function demon:particles/beast/fourth/manager
execute rotated as @s rotated ~90 ~ positioned ^ ^ ^-0.2 run function demon:particles/beast/fourth/manager
execute rotated as @s rotated ~90 ~ positioned ^ ^ ^0.5 run function demon:particles/beast/fourth/manager
###
execute positioned ^ ^ ^1 run tag @e[tag=!fourthbeast,distance=..2,type=!#demon:nokill] add 4bf
execute positioned ^ ^ ^-1 run tag @e[tag=!fourthbeast,distance=..2,type=!#demon:nokill] add 4bf
execute positioned ^ ^ ^2 run tag @e[tag=!fourthbeast,distance=..2,type=!#demon:nokill] add 4bf
tellraw @a[tag=debug] "fourth form beast"

execute as @s run function demon:breathings/manager/cooldowns/fast

execute as @e[tag=4bf,type=!#demon:nokill] at @s run damage @s 20 minecraft:player_attack by @a[tag=fourthbeast,limit=1,sort=nearest]


tag @s remove fourthbeast
tag @e[tag=4bf] remove 4bf
tellraw @a[tag=debug] {"text":"damage 20","color":"gray"}
