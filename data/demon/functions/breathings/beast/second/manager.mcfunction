tag @s add beastsecond
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"beast.second.chat","color":"gray"}]

execute positioned ^ ^1 ^1 run tag @e[tag=!beastsecond,distance=..2.5,type=!#demon:nokill] add 2bf

execute as @e[tag=2bf,type=!#demon:nokill] at @s run damage @s 20 minecraft:player_attack by @a[tag=beastsecond,limit=1,sort=nearest]

tellraw @a[tag=debug] {"text":"damage 20","color":"red"}
execute rotated ~90 ~-0 positioned ^ ^2 ^-1 run function demon:particles/beast/second/manager
execute rotated ~90 ~-40 positioned ^ ^2 ^-1 run function demon:particles/beast/second/manager
scoreboard players set @s ds_detectclick 0
#Comestics!
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 2
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 2
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.sweep voice @a ~ ~ ~ 1 1
execute as @s run function demon:breathings/manager/cooldowns/fast

tellraw @a[tag=debug] "manager beastsecond"
tag @s remove beastsecond