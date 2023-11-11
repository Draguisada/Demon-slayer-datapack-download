execute as @e[tag=killsummer,type=!#demon:nokill] at @s run damage @s 25 minecraft:player_attack by @a[tag=summerorigin,limit=1,sort=nearest]

tag @e[tag=killsummer] remove killsummer
kill @e[type=armor_stand,tag=summerparticles]
tag @a[tag=summerorigin] remove summerorigin