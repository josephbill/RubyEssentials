# VARIABLE : mem0ry locations , storage containers
# Types 
# 1. Global Variable , Instance Variables , Local Variables , Ruby Constants , Pseudo-Variable / basic literals 
# Global : always starts with a $
$global_variable = 20

class Class1 
    def printGlobal 
          puts "The global in class1 is #global_variable"
    end

end


class Class2
    def printGlobal 
          puts "The global in class2 is #global_variable"
    end

end

# Instance variables : strictly used inside classes 
# they stress that whenever an object is created from a blueprint of A CLASS , you should also pass values for 
# the defined variable
# starting with an @

# class variables : start with @@ 
# must be intialized for use within the class 


# local variables : begin with a lowercase letter or an _ 

#pseudo -variables (self: point to the current object, true, false , nil , _FILE_ , _LINE_)

class Customer 
    @@no_of_cust = 0
    VAR1 = 2
    attr_accessor :cId

    def initialize(id,name,phone)
       @cId = id
       @cName = name
       @cPhone = phone
       @cEmail = "Josephbill00@gmail.com"
    end 

    # # getter method 
    # def cId
    #     @cId
    # end

    # # setter method 
    # def cId=(cId)
    #    @cId = cId
    # end


    def display()
           out = "Hello world"
           puts "User 1 id is #@cId and name is #@cName and phone is #@cPhone , finally email #@cEmail"
    end

    def countNo()
      @@no_of_cust += 1 
      puts "Total Objects is : #@@no_of_cust"
    end
end 

# to create the objects 
user1 = Customer.new("1","Joseph","0798501657")
user2 = Customer.new("2","Mary","0798501657")


# call the methods 
user1.display()
user1.countNo()

puts user1.cId

user1.cId = 2
puts user1.cId

