tp @s ^ ^ ^1
particle flame ~ ~ ~ 1.2 1.2 1.2 0.1 100 normal @a[distance=..30]
tag @e[distance=..2.5,type=!#demon:nokill,tag=!tiger,tag=!flametiger] add flametigerkill

tag @e[tag=flametigerkill,type=!#demon:nokill,tag=!done] add kill

execute as @e[tag=kill,type=!#demon:nokill] at @s run damage @s 35 minecraft:player_attack by @a[tag=flametigerorigin,limit=1,sort=nearest]

tag @e[tag=flametigerkill,tag=!done] add done
tag @e[tag=flametigerkill,tag=done] remove flametigerkill

tellraw @a[tag=debugrepeat] "manager inside tiger flame five"