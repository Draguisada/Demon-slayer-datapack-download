scoreboard players set @s ds_detectclick 0 
#Set tag just to not cofuse me
tag @s add thirdbeast
#anounce in chat in 60 blocks radious
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"beast.third.chat","color":"gray"}]
########################DECORATION###########################
#particle
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 0.6 1
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 0.6 0.5
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 0.6 1
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 0.6 0.5
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 0.6 1
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 0.6 0.5

execute rotated ~90 ~-90 positioned ~ ~ ~ run function demon:particles/beast/second/manager
execute rotated ~90 ~-90 positioned ~ ~ ~ run function demon:particles/beast/second/manager
###
execute positioned ^ ^ ^1 run tag @e[tag=!thirdbeast,distance=..2,type=!#demon:nokill] add 3bf

tellraw @a[tag=debug] "first form beast"

execute as @s run function demon:breathings/manager/cooldowns/fast

execute as @e[tag=3bf,type=!#demon:nokill] at @s run damage @s 20 minecraft:player_attack by @a[tag=thirdbeast,limit=1,sort=nearest]

tag @s remove thirdbeast
tag @e[tag=3bf] remove 3bf
tellraw @a[tag=debug] {"text":"damage 20","color":"gray"}
