#object relationship 
# Three classes , Person , Dog , Owner  
# - a person can be created 
# - a dog can be created 
# - an object relationship can be established to create an owner object 
# - using the owner object we create a custom method , walk_dog


class Person 
  attr_accessor :name, :age 
  def initialize(name,age)
     @name = name
     @age = age
  end

end 


class Dog 
    attr_accessor :name, :breed 
    def initialize(name,breed)
       @name = name
       @breed = breed
    end

    def sound 
       puts 'barks'
    end 
  
  end 


class Owner 
    attr_accessor :person, :dog
    # custom attributes and logics 
    def initialize(person,dog)
       @person = person
       @dog = dog
    end

    def walk_dog
          puts "#{person.name} is walking #{dog.name} the #{dog.breed}"
          dog.sound
    end
end 


# object relationship here will work by combining the simpler objects for a complex object i.e owner 

person = Person.new("Joseph",26)
dog = Dog.new("Rex","Golden Retriever")

# duck typing  # if any inheritance happened / then owner still has access to those methods 
# NB , if blocked using attributes accessor or methods accessors / owner cannot unless 
owner = Owner.new(person,dog)
# method call 
owner.walk_dog