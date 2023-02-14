# execute the same block of code a specified number of times 
#while statement 
# while conditional do 
#     code 
# end 
$start = 0 
$end = 11

while $start < $end  do 
    puts("The number is #$start")
    # increment / decrement : controlling loop 
    $start +=1
end 

# code while condition 

# OR 

# begin 
#     code 
# end while conditional 
# while modifier 
begin 
    puts("The number is #$start")
    $start += 1
end while $start < $end    

# until statement 
# until : executes code while conditional is false
# until conditional do 
#     code 
# end 
until $start > $end do 
    puts("The number is #$start")
    $start += 1
end
# We also have an until modifier 
# begin -> does code without basing the conditional on the first loop 
# looks at the conditional


#for statement 
# for...in : executes code once for each element in an expression
for start in 0..10
    puts("The number is #{start}")
end

# .each 
(0..10).each do |i|
    puts("The number is #{i}")
end 