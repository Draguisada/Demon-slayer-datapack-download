
item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick{Damage:0,CustomModelData:2,nichirin:tanjiro,isNichirin:true,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:10,Operation:0,UUID:[I;1834582253,1707099266,-1248964434,1073915841],Slot:"mainhand"}]} 1
item modify entity @s weapon.mainhand demon:setnichirintanjiro

tag @s add sun
scoreboard players set @s ds_tanjiroattack 1
tellraw @a[tag=debug] "nichirin setted to sun"