# Create the scoreboard to track the timer
scoreboard objectives add item_timer dummy

# Set custom time here (min. = 0; the lower the value, the faster the give timer):
scoreboard players set timer_max item_timer 100

# Increment timer_current in item_timer by 1 every tick
scoreboard players add timer_current item_timer 1

# If timer_current is greater than or equal to timer_max set timer_current back to 0
execute if score timer_current item_timer >= timer_max item_timer run scoreboard players set timer_current item_timer 0

# For each online player, execute the give function
execute if score timer_current item_timer matches 0 run execute as @a run function scripts:give