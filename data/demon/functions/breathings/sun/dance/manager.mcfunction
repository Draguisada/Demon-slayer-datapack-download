tag @s add dance
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"sun.first.chat","color":"gold"}]
effect give @s minecraft:slowness 1 4 true
execute positioned ^ ^1 ^1 run tag @e[tag=!dance,type=!player,distance=..1.5] add kill
execute as @e[tag=kill,type=!#demon:nokill] at @s run damage @s 25 minecraft:player_attack by @a[tag=dance,limit=1,sort=nearest]
tellraw @a[tag=debug] {"text":"damage 25","color":"red"}
execute anchored eyes positioned ^-1 ^ ^0.5 run function demon:particles/sun/dance/manager
scoreboard players set @s detectclick 0
scoreboard players set @s kagura 10
#Comestics!
playsound minecraft:entity.player.hurt_on_fire voice @s ~ ~ ~ 1 0.5
playsound item.flintandsteel.use voice @s ~ ~ ~ 1 1
playsound item.firecharge.use voice @s ~ ~ ~ 1 1
execute as @s run function demon:breathings/manager/cooldowns/fast
tag @s remove flameform

tellraw @a[tag=debug] "manager dance sun"
tag @s remove dance
