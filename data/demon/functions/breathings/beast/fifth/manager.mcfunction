scoreboard players set @s ds_detectclick 0 
#Set tag just to not cofuse me
tag @s add fifthbeast
#anounce in chat in 60 blocks radious
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"beast.fifth.chat","color":"gray"}]
########################DECORATION###########################
#particle
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 0
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 0
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 0
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 0
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 0
execute rotated as @s positioned ^ ^ ^ run function demon:particles/beast/fifth/manager

###
tag @e[tag=!fifthbeast,distance=..4,type=!#demon:nokill] add 5bf

tellraw @a[tag=debug] "fifth form beast"

execute as @s run function demon:breathings/manager/cooldowns/slow

execute as @e[tag=5bf,type=!#demon:nokill] at @s run damage @s 20 minecraft:player_attack by @a[tag=fifthbeast,limit=1,sort=nearest]


tag @s remove fifthbeast
tag @e[tag=5bf] remove 5bf
tellraw @a[tag=debug] {"text":"damage 20","color":"gray"}
