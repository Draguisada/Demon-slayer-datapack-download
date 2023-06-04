execute as @e[type=item,nbt={Item:{tag:{isNichirin:1b}}}] at @s on origin run data modify entity @e[type=item,sort=nearest,limit=1] Owner set from entity @s UUID
execute as @e[type=item,nbt={Item:{tag:{isNichirin:1b}}}] run data modify entity @s PickupDelay set value 0s
execute as @e[type=item,nbt={Item:{tag:{isNichirin:1b}}}] at @s on origin run tp @e[type=item,sort=nearest,limit=1] @s
scoreboard players set @s drop 0