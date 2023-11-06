scoreboard players set @s ds_kagura 10
tag @s add kagura
item modify entity @s weapon.mainhand demon:settokagura
#dance
execute as @a[limit=1,scores={ds_detectclick=1..,ds_tanjiroattack=1},tag=!cooldown] at @s run function demon:breathings/sun/dance/manager
#Clear Blue Sky
execute as @a[limit=1,scores={ds_detectclick=1..,ds_tanjiroattack=2},tag=!cooldown] at @s run function demon:breathings/sun/bluesky/manager
#raging sun
execute as @a[limit=1,scores={ds_detectclick=1..,ds_tanjiroattack=3},tag=!cooldown] at @s run function demon:breathings/sun/ragingsun/manager
#burning bones, summer sun
execute as @a[limit=1,scores={ds_detectclick=1..,ds_tanjiroattack=4},tag=!cooldown] at @s run function demon:breathings/sun/summer/manager
#fire wheel
execute as @a[limit=1,scores={ds_detectclick=1..,ds_tanjiroattack=5},tag=!cooldown] at @s run function demon:breathings/sun/firewheel/manager
#fake rainbow
execute as @a[limit=1,scores={ds_detectclick=1..,ds_tanjiroattack=6},tag=!cooldownrainbow] at @s run function demon:breathings/sun/rainbow/manager
#flame dance
execute as @a[limit=1,scores={ds_detectclick=1..,ds_tanjiroattack=7},tag=!cooldown] at @s run function demon:breathings/sun/flamedance/manager


tellraw @a[tag=debug] "commands sun"