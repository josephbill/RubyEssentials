# Monkey Patching : extending the behaviour of a clss or module at runtime , typically done by reopen the class 
# and add or modify methods 

class Word 
    def greeting 
        "Hello, #{self}!"
    end 
 end 
 
 puts "Joseph".greeting
 
 class Word 
     def greeting 
         "My name is, #{self}!"
     end 
 end
 
 puts "Joseph".greeting