execute as @e[type=item,nbt={Item:{tag:{isNichirin:1b}}}] at @s on origin run data modify entity @e[type=item,sort=nearest,limit=1] Owner set from entity @s UUID
execute as @e[type=item,nbt={Item:{tag:{isNichirin:1b}}}] run data modify entity @s PickupDelay set value 0s
execute as @e[type=item,nbt={Item:{tag:{isNichirin:1b}}}] at @s on origin run tp @e[type=item,sort=nearest,limit=1] @s
scoreboard players set @s ds_drop 0


execute as @s[tag=zenitsu] at @s run function demon:characters/zenitsu/changebreathing
execute as @s[tag=water] at @s run function demon:characters/giyu/changebreathing
execute as @s[tag=sun] at @s run function demon:characters/sun/changebreathing
execute as @s[tag=flame] at @s run function demon:characters/flame/changebreathing
execute as @s[tag=beast] at @s run function demon:characters/beast/changebreathing
execute as @s[tag=sound] at @s run function demon:characters/sound/changebreathing
