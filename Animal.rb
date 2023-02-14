# Object Inheritance : parent and child classes 
# parent / superclass 
class Animal 
# class variables 
@@species = []
# to define a class method , we use self 
# adding species to the class variable 
def self.add_species(species)
    @@species << species
end 

# class method to return all the species 
def self.all_species 
   @@species
end

attr_accessor :name, :species, :sound

def initialize(name,sound,species)
   @name = name
   @sound = sound
   @species = species
   Animal.add_species(species) 
end

def animalSound
   puts "The #{@name} makes this sound #{@sound}"
end
    
end




