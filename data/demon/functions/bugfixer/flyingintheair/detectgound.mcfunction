execute if entity @s[nbt={OnGround:1b}] run attribute @s generic.knockback_resistance base set 0
tag @s remove flying
tellraw @a[tag=debug] "detectground bugfixer"