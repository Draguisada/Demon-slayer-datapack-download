
item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick{Damage:0,CustomModelData:5,nichirin:beast,isNichirin:true,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1049488646,1068943280,1031596197,1575793590]},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"offhand",Amount:10,Operation:0,UUID:[I;1049488646,1068943280,1031596197,1575793590]}]} 1
item modify entity @s weapon.mainhand demon:setnichirinbeast
give @p minecraft:carrot_on_a_stick{Damage:0,CustomModelData:5,nichirin:beast,isNichirin:true,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1049488646,1068943280,1031596197,1575793590]},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"offhand",Amount:10,Operation:0,UUID:[I;1049488646,1068943280,1031596197,1575793590]}]} 1
tag @s add beast
scoreboard players set @s beastattack 1
tellraw @a[tag=debug] "nichirin setted to beast"