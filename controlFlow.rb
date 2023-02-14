# if conditional [then]
#     code ... 
#     [elsif conditional [then]
#    code ...
# ]
# [else 

# code ...]
# end 
x = 1 
if x > 2 
    puts "x is greater than"
    elsif x <= 2 and x != 0 
        puts "x is 1"
    else 
        puts "NAN"
    end 


# unless 
# executes code on a false condition 
y = 1
unless y >= 2 
   # this code here will run
else 
    # if condition is true this sections runs 
end 


# case 
# case myvariable 
# when a,b
#     #code to run 
# when a,b,c 
#     #code to run 
# else 
#     #code to run 
# end  

age = 100
case age 
when 0 .. 10
   puts 'Not allowed'
when 11 .. 18
    puts 'Not allowed :  but can visit chill area'
when 19 .. 20 , 100 .. 101
    puts 'allowed'
else 
    puts 'this is a robot'
end 

