# modules in ruby : provide a way for you to organize code into reusable units called modules 
# Data Encapsulation : organizing related methods, constants and classes 

module MyModule
  PI = 3.141

  def self.area_of_circle(radius)
       PI * radius * radius 
  end

  def self.circumference_of_circle(radius)
        2 * PI * radius
  end

end 

puts MyModule::PI  # accessing the constants 
puts MyModule.area_of_circle(20)
puts MyModule.circumference_of_circle(20)




