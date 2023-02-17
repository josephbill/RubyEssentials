class Team 
 def teamCategory 
      puts "Team is in this category"
 end
  
end


# using inheritance
class TeamA < Team
    def teamCategory 
        puts "Team is in this TeamA Category"
   end

end
# creeating an object 
team1 = TeamA.new
team1.teamCategory


# using duck - typing. 
# working on the idea of what an object can do rather than what it actually is 

class Hotel 
   def enters
      puts "enters"
    end
      
    # .type points to a method in this example 
    def type(customer)
      customer.type
    end

    # .room points to a method in this example,
    def room(customer)
       customer.room
    end
end 

# this class represents single rooms 
class Single 

   def type
      puts "4th floor room"
   end 

   def room 
        puts "5000 per night"
   end

end

# this class represents single rooms 
class Couple 

    def type
       puts "5th floor room"
    end 
 
    def room 
         puts "8000 per night"
    end
 
 end


 # duck typing 
 # objects perform the polymorphism 
hotela = Hotel.new
puts "Section Single"
customer = Single.new 
hotela.type(customer)
hotela.room(customer)
puts "Section Couple"

customer = Couple.new
hotela.type(customer)
hotela.room(customer)
