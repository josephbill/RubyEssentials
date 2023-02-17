# this is the group assignment 
def solution(a,b,c)
  # intialize variables to store the number of each type fruit 
  num_apple = 0
  num_oranges = 0
  num_bananas = 0
  # I need the count of each fruit in the array 
  # .each method : iterate over enumerables , giving a custom method to each item 
  a.each do |fruit|
    case fruit
    when 'apple'
        num_apple += 1
    when 'orange'
        num_oranges += 1
    when 'banana'
        num_bananas += 1
    end
  end

  # initialize a hash to map the price of each fruit 
  prices = {"apple" => b[0], "orange" => b[1] , "banana" => b[2]}

  # total costs 
  total_cost = num_apple * (prices["apple"] * (1.0 - c["apple"] / 100.0)) + 
               num_oranges * (prices["orange"] * (1.0 - c["orange"] / 100.0)) + 
               num_bananas * (prices["banana"] * (1.0 - c["banana"] / 100.0)) 

  total_cost.to_i  # casting
end

a = ["apple", "orange", "banana", "apple", "banana"]
b = [50, 40, 30]
c = { "apple" => 10, "orange" => 20, "banana" => 5 }

puts solution(a, b, c)
