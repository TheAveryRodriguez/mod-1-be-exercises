# Your turn to create a hash. Make sure to use symbols for the keys.

new_band = Hash.new(0)

require "pry"
binding.pry

# new_band = {
#   bassist: nil,
#   vocalist: nil,
#   drummer: nil
# }

new_band[:bassist] = ""
new_band[:vocalist] = "John"
new_band[:pianist] = "bob"

require "pry"
binding.pry

new_band[vocalist:] = "Jimmy"
new_band[drummer:] = "Schmitty"

p new_band.keys
p new_band.values

new_band[vocalist:] = "Montgomery"

p new_band.keys
p new_band.values

p new_band

# Steps
# 1. Create a hash called new_band.
# 2. Add a bassist to your new_band hash.
# 3. Find the name of your bassist by accessing the :bassist key in the new_band hash.
# 4. Find the value attached to :vocalist in your hash.
# 5. Add a vocalist to your hash.
# 6. Add a drummer to your hash.
# 7. Get all the keys in your Hash. What kind of object does that method return?
# 8. Get all the values in your Hash. What kind of object does that method return?
# 9. Assign a new value to the :vocalist key of your hash.
# 10. How has keys changed after the last step? How has values changed?
