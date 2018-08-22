class Animal

  def initialize(input)
    @type = input[:type]
    @state = input[:state]  
  end

  def type
    @type
  end

  def state
    @state
  end

  def eat(food)
    "The animal is eating #{food}"
  end

  def sleep 
    @state = "alseep"
  end

  def wake
    @state = "awake"
  end

  def eat(food)
      "The #{@type} is eating #{food}"
  end
end
animal = Animal.new(type: "gator", state: "awake")
puts animal
puts animal.eat("fishies")
puts animal.sleep
puts animal.state
puts animal.wake
puts animal.type


class Person < Animal
  def initialize(input)
    @type = "person"
    @state = input[:state]
    @age = input[:age]
    @gender = input[:gender]
    @name = input[:name]
  end

   def age
    @age
   end 

   def gender
    @gender
  end

  def name
    @name
  end

  def eat(food)
    if food == "person"
      "This is no person, it's an animal disguised as a person!"
    else
      "The person is eating #{food}"
    end
  end
end

person = Person.new(type: "person", state: "awake", age: 36, gender: "male", name: "Mark")
puts person
puts person.type
puts person.state
puts person.age
puts person.gender
puts person.name
puts person.eat("burger")
puts person.eat("person")

