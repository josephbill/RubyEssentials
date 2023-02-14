# technique in programming where code is written that generates or manipulates other code. 
# 3 ways , method missing , dynamic method defination , monkey patching. 

# Dynamic method defination : uses a inbuilt method in ruby ? define_method 
class Team 
  def self.add_method_to_team(method_name, &block)
      # logic / block of code 
      define_method(method_name, &block)
  end 

end 
# we have created objects 
teamA = Team.new 
# create a dynamic method during run time 
teamA.class.add_method_to_team(:cost) do 
  # logic to be executed during runtime 
  100000.00
end

puts teamA.cost


# Monkey Patching : extending the behaviour of a clss or module at runtime , typically done by reopen the class 
# and add or modify methods 

class Word 
    def greeting 
        "Hello, #{self}!"
    end 
 end 
 
 joseph = Word.new
 puts joseph.greeting
# re open a class by defining it again  
 class Word 
     def greeting 
         "My name is, #{self}!"
     end 
 end
 
 joseph = Word.new
 puts joseph.greeting
 

 # Method _ missing method  : inbuilt method in RUby that is auto. called when a method that does not exist is 
 # invoked 
# method_missing  : here you can give custom behaviour for methods called that do not exist 

class BookShop 
    attr_accessor :book_name,  :price , :category
    def method_missing(method_name, *args)
        # next after defination , go ahead and extract the method name 
        if method_name.to_s.start_with?("price_")
            # custom behaviour # logic # a function with the logic 
            price_unknowbook(method_name.to_s[6..-1], args[0])
        else 
                 super
        end 
       
    end 


    def price_unknowbook(bookname, price)
       # logic that fits the app 
       "The price is 0 the #{bookname} book does not exist!"
    end

    def initialize(attributes = {})
    attributes.each do |name, value|
       send("#{name}=", value)
    end
    
    end 
end
 

bookUnknown = BookShop.new(:book_name => "Book One", :price => 1000, :category => "Kids Zone")
# bookUnknown.book_name = "Book One"
# bookUnknown.price = 1000
# bookUnknown.category = "Kids Zone"
puts bookUnknown.book_name
puts bookUnknown.price_harryPotter(0)