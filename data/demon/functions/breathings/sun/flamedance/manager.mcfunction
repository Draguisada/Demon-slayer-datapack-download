scoreboard players set @s ds_kagura 20

tag @s add flamedance
tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"sun.twelve.chat","color":"gold"}]
effect give @s minecraft:slowness 1 4 true
execute positioned ^ ^1 ^1 run tag @e[tag=!flamedance,type=!player,distance=..1.5] add flamedancesf
execute as @e[tag=flamedancesf,type=!#demon:nokill] at @s run damage @s 20 minecraft:player_attack by @a[tag=flamedance,limit=1,sort=nearest]
tellraw @a[tag=debug] {"text":"damage 25","color":"red"}
execute anchored eyes positioned ^-1 ^ ^0.5 run function demon:particles/sun/dance/manager
scoreboard players set @s ds_detectclick 0
#Comestics!

playsound minecraft:entity.player.hurt_on_fire voice @s ~ ~ ~ 1 0.5
playsound item.flintandsteel.use voice @s ~ ~ ~ 1 1
playsound item.firecharge.use voice @s ~ ~ ~ 1 1
execute as @s run function demon:breathings/manager/cooldowns/fast
tag @s remove flameform

tellraw @a[tag=debug] "manager falme flamedance sun"
tag @s remove flamedance
tag @e[tag=flamedancesf] remove flamedancesf