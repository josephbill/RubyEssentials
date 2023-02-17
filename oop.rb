# OOP : classes and objects as building blocks 
# classes : blueprints to objects : templates 
# classes : attributes /variables , methods working on the variables 
# objects : class instances : creation from the blueprint. 

# Keyword self : special keyword referencing the current object.
require './modules.rb'
class Person 
    attr_accessor :name 
   
    # def initialize(name)
    #     @name = name
    # end 

    def name 
        @name
        #  "Name from  method name: #{@name}"
    end

    def greeting 
        "Hello, my name is #{self.name}"
    end 

end 


# MODULES 
class Circle 
# to include a module in a class, we use the include keyword 
include MyModule
def initialize(radius)
   @radius  = radius
end 

def area 
    MyModule.area_of_circle(@radius)
end

def circumference
    MyModule.circumference_of_circle(@radius)
end 


end 

person  = Person.new() # creating object 
puts person.name = "Joseph"
puts person.greeting

circle = Circle.new(20)
puts circle.area
puts circle.circumference


# data accessor (private , public )  # focus is on inheritance 
class RubyClass
     public
    def publicMethod 
      puts "Ruby in public"
    end

    private
    def privateMethod 
        puts "Ruby in private"
      end

end