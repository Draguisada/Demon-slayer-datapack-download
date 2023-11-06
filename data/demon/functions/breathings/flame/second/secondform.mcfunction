tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"flame.second.chat","color":"red"}]
effect give @s minecraft:slowness 1 4 true
execute positioned ^ ^1 ^1 run tag @e[tag=!flameform,type=!#demon:nokill,distance=..1.5] add kill
execute as @e[tag=kill,type=!#demon:nokill] at @s run damage @s 25 minecraft:player_attack by @a[tag=flameform,limit=1,sort=nearest]

tellraw @a[tag=debug] {"text":"damage 25","color":"red"}
execute anchored eyes positioned ^-1 ^ ^0.5 run function demon:particles/flame/second
scoreboard players set @s ds_detectclick 0
#Comestics!
playsound minecraft:entity.player.hurt_on_fire player @s ~ ~ ~ 1 0.5
playsound minecraft:entity.player.hurt_on_fire player @s ~ ~ ~ 1 1
playsound item.firecharge.use player @s ~ ~ ~ 1 1
execute as @s run function demon:breathings/manager/cooldowns/medium
tag @s remove flameform

tellraw @a[tag=debug] "manager second flame"