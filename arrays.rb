# Definations 
arr = Array.new(7, "item1")
arr.size
arr.length

puts arr

# [] literal constructor

arr = Array["item","item1"]

puts arr[1]

# Hashes 

# Hash [(key => value)]
puts Hash["x",30,"y",20]
puts Hash["x" => true, "y" => false]

testHash = Hash.new("Reference")
puts testHash["x"] = 40