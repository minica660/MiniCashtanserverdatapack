execute as @a if score @s useposition matches 1.. if data entity @s {active_effects:[{id:"minecraft:speed"}]} at @s run scoreboard players set @s speed 9 

execute as @a if score @s speed matches 9 at @s run effect give @s speed 1 7 true

#制御
    execute as @a if score @s speed matches 1..9 at @s run scoreboard players remove @s speed 1

execute as @a if score @s speed matches 2 at @s run effect clear @s speed
execute as @a if score @s speed matches 1 at @s run scoreboard players set @s speed 10

#give
execute as @a if score @s speed matches 1 at @s run give @s potion[potion_contents={potion:"minecraft:strong_swiftness"}]
