require_relative 'Animal'
# define a child class  / subclass 
# inheritance in ruby , works this way : < nameofparentclass in the subclass defination
class Baboons < Animal
    def initialize(name)
         super(name,"grunts","Olive")
    end

    def moreInfo
       puts "#{@name} has been added!"
    end
 end
 
# create an instance of an Olive Baboon / subclass 
mark = Baboons.new("Mark")

# calling a method in the parent class 
mark.animalSound

# calling a method in this class 
mark.moreInfo

# access to the instance variables 
puts "Name #{mark.name}"
puts "Species #{mark.species}"


#class methods 
puts "all species : #{Animal.all_species}"
