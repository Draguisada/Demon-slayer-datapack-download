tellraw @a[distance=..60] ["",{"selector":"@s"},{"translate":"water.tenth.chat","bold": true,"color":"blue"}]
scoreboard players set @s 10form 300
effect give @s minecraft:strength 15 5 true
effect give @s minecraft:strength 15 5 true
effect give @s minecraft:speed 15 2 true
effect give @s minecraft:jump_boost 15 0 true
execute as @s run scoreboard players set @s cooldown 450
scoreboard players set @a[scores={detectclick=1..}] detectclick 0
summon armor_stand ~ ~ ~ {Tags:["waterdragon"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"bone_meal",Count:1b,tag:{CustomModelData:101b}}],HandItems:[{},{}],DisabledSlots:3080208}

playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 2 1
playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 1 1
playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 2 1
playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 1.5 1
playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 0 1
playsound entity.boat.paddle_water voice @a ~ ~ ~ 1 0 1

tellraw @a[tag=debug] "manager 10form water"