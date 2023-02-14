def first_method(array)
  sum = 0
  array.each do |element|
  sum += element
  end
 return sum
end


def second_method(array)
    multiplier = 2
    sum = first_method(array)
    sum * multiplier
end 

array = [1,2,3,4,5]
result = second_method(array)
puts result

# know where to call the second or first method 