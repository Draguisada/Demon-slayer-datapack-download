scoreboard players set @s kagura 20
tag @s add raging
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"sun.third.chat","color":"gold"}]

execute positioned ^ ^1 ^1 run tag @e[tag=!raging,type=!#demon:nokill,distance=..1.5] add kill
execute as @e[tag=kill,type=!#demon:nokill] at @s run damage @s 25 minecraft:player_attack by @a[tag=raging,limit=1,sort=nearest]
tellraw @a[tag=debug] {"text":"damage 25","color":"red"}
execute rotated ~90 ~-0 positioned ^ ^0.3 ^-0.5 run function demon:particles/sun/ragingsun/manager
execute rotated ~90 ~-5 positioned ^ ^1 ^1.2 run function demon:particles/sun/ragingsun/manager
scoreboard players set @s detectclick 0
#Comestics!
playsound minecraft:entity.player.hurt_on_fire voice @s ~ ~ ~ 1 0.5
playsound item.flintandsteel.use voice @s ~ ~ ~ 1 1
playsound block.lava.pop voice @s ~ ~ ~ 1 1
execute as @s run function demon:breathings/manager/cooldowns/fast

tellraw @a[tag=debug] "manager raging sun sun"
tag @s remove raging

