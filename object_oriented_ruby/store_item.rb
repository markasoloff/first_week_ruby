
class Dino

  def initialize(name, diet, hip_type, weight)
    @name = name
    @diet = diet
    @hip_type = hip_type
    @weight = weight
  end

  def name
    @name
  end

  def diet
    @diet
  end

  def hip_type
    @hip_type
  end

  def weight
    @weight
  end


  def weight=(pounds)
    @weight = pounds
  end

  def print_info
    puts "#{@name} #{@diet} #{@hip_type} #{@weight}"
  end
end



dino1 = Dino.new("Tyrannosaurus Rex", "carnivore", "bird-hipped", 1500)

puts dino1.print_info
puts dino1.name 
puts dino1.diet
puts dino1.weight
puts dino1.hip_type
dino1.weight = 1000
puts dino1.weight
  



# dino1 = {:name => "Tyrannosaurus Rex", :diet => "carnivore", :hip_type => "bird-hipped"}

# dino2 = {name: "Stegosaurus", diet: "herbivore", hip_type: "lizard-hipped"}

# dino3 = {"name" => "Ornithomimus", "diet" => "omnivore", "hip_type" => "bird-hipped"}

# puts dino1
# puts dino2
# puts dino3