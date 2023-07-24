# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

# Use an enumerable to:
# 1. Return an unnested (single layer) array of animals as strings

# p nested_animals.flatten.map { |animal| animal.to_s }

# stringimals = []
# nested_animals[0].each { |animal| stringimals << animal.to_s }
# nested_animals[1].each { |animal| stringimals << animal.to_s }

# nested_animals.each do |groupimal|
#   groupimal.each do |animal|
#     stringimals << animal.to_s
#   end
# end

# p stringimals

# 2. Return an unnested array of animals with length >= 4

# p nested_animals.flatten.map { |animal| animal.to_s }
# p nested_animals.flatten.find_all { |animal| animal.length >= 4 }

stringimals = []

nested_animals.each do |groupimal|
  groupimal.each do |animal|
    if animal.length >= 4
      stringimals << animal
    end
  end
end

p stringimals

# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }

# hashimals = nested_animals.flatten.each_with_object({}) do |animal, hash|
#   hash[animal] = animal.length
# end

p hashimals
