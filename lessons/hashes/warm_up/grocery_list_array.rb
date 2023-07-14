fridge_items_1 = ["milk", "eggs", "eggs", "eggs", "eggs",
  "eggs", "eggs", "avocado", "avocado", "tortilla",
  "tortilla", "tortilla", "tortilla", "tortilla",
  "tortilla", "tortilla", "tortilla", "tortilla"]

# Looking at the collection above:

# 1. What is problematic about listing `fridge_items_1`
# as an array structured grocery list?

# It would be easier to have a variable for each "type" of item.
# You would need to create an additional code to iterate over the array to determine how many of each to receive.
# Ordering matters when using an array.
# Thigns can get unorganized inside

# 2. What might be a more readable way to structure this?
# Im assumign a hash :eggs :milk :tortilla :avocado???
# Using some sort of key value pair: key is item and value is quantity
# A nested array, put all produce together, dairy, etc, etc
## fridge_items_1 = [
# []
# []
# []
# ]
