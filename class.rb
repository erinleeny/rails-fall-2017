module Age
  attr_accessor :age
end

class Animal
  include Age
#same thing
  attr_accessor :name
  #def name=(value)
    #@name = value
  #end

  #def name
  #@name
  #end
end

class Artifact
  include Age
  attr_accessor :description
end

class Duck < Animal
  def vocalize
    puts "honk"*3
  end
end

elephant = Animal.new
elephant.name = "elephant"
elephant.age = 23
puts elephant.name
puts elephant.age
#puts Duck.new.vocalize
