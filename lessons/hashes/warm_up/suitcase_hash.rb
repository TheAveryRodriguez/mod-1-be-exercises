# suitcase = Hash.new(0)
## Instance of a Hash
### Default value == 0

suitcase = {
  "socks" => 4,
  "pants" => 1
}

suitcase ["shirts"] = 3

# 1. Add a key/value pair of shirts/3 to the suitcase.
## Grab the hash, set the key ["shirts"] and assign it a value 3
### Key always goes inside of [], matching key types is preferred

# 2. Increase the value of shirts by 1.
## suitcase["shirts"] = 4   or   suitcase["shirts"] += 1
### If you dont know values prior, doing the += 1 is accomplishing what you want it to accomplish

# 3. Add a key/value pair of swimsuit/true to the suitcase.
## suitcase["swimsuit"] = true

# 4. How to delete a key?
## suitcase.delete("swimsuit")

# EXTRA. if you call a key that doesnt exist, it returns nil
## Setting a default value to 0 instead of nil for all keys
###  suitcase.default = 0
### if key value = nil you cannot +/- the value (nil + 1 = error)
