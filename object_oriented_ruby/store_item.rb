
class Dino

  attr_reader :name, :diet, :hip_type, :weight
  attr_writer :name, :weight


  def initialize(input)
    @name = input [:name]
    @diet = input [:diet]
    @hip_type = input [:hip_type]
    @weight = input [:weight]
  end

  def print_info
    puts "#{@name} #{@diet} #{@hip_type} #{@weight}"
  end
end

#subclass of Dino, created for day 3 in-class assignment

class Food < Dino
  
  attr_reader :name, :diet, :hip_type, :weight, :shelf_life
  
  def initialize(input)
    super
    @shelf_life = input[:shelf_life]
  end
end


food = Food.new(name: "Jelly", diet: "nothing", hip_type: "No hips here, pal!", weight: 1, shelf_life: "6 months")


puts food.name
puts food.shelf_life
puts food.print_info

dino1 = Dino.new(name: "Tyrannosaurus Rex", diet: "carnivore", hip_type: "bird-hipped", weight: 1500)

puts dino1.print_info
puts dino1.name 
puts dino1.weight = 50000
puts dino1.hip_type


  



# dino1 = {:name => "Tyrannosaurus Rex", :diet => "carnivore", :hip_type => "bird-hipped"}

# dino2 = {name: "Stegosaurus", diet: "herbivore", hip_type: "lizard-hipped"}

# dino3 = {"name" => "Ornithomimus", "diet" => "omnivore", "hip_type" => "bird-hipped"}

# puts dino1
# puts dino2
# puts dino3