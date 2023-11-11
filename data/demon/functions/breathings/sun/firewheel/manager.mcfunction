scoreboard players set @s ds_kagura 20
scoreboard players set @s ds_detectclick 0 
#Set tag just to not cofuse me
tag @s add kasha
#anounce in chat in 60 blocks radious
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"sun.tenth.chat","color":"gold"}]
########################DECORATION###########################



playsound minecraft:entity.player.hurt_on_fire voice @s ~ ~ ~ 1 0.5
playsound item.flintandsteel.use voice @s ~ ~ ~ 1 1
playsound item.firecharge.use voice @s ~ ~ ~ 1 1

execute as @s at @s anchored eyes rotated ~90 0 positioned ^ ^ ^-1 run function demon:breathings/sun/firewheel/particles

tag @e[distance=..2.5,tag=!kasha,type=!#demon:nokill] add kashasf

execute as @s at @s if block ~ ~-1 ~ air run effect give @s levitation 1 1 true

###
tellraw @a[tag=debug] "kasha sun"

execute as @s run function demon:breathings/manager/cooldowns/fast

execute as @e[tag=kashasf,type=!#demon:nokill] at @s run damage @s 20 minecraft:player_attack by @a[tag=kasha,limit=1,sort=nearest]

tellraw @a[tag=debug] {"text":"damage 20","color":"red"}
schedule function demon:breathings/sun/firewheel/remove 2t
tag @e[tag=kashasf] remove kashasf
