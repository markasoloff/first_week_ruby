#dinosaurs

# Exercise: Rewrite your store items using a class instead of a hash.
# a) Choose which attributes should have “reader” methods and which attributes should have “writer” methods.
# b) Create an instance from your store item class. Use puts statements to print the 3 attributes individually to the terminal.

class Dino

  def initialize(name, diet, hip_type, weight)
    @name
    @diet
    @hip_type
    @weight
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
    puts "#{name} #{diet} #{hip_type} #{weight}"
  end
end



dino1 = Dino.new("Tyrannosaurus Rex", "carnivore", "bird-hipped", 1500)

dino1.print_info



# dino1 = {:name => "Tyrannosaurus Rex", :diet => "carnivore", :hip_type => "bird-hipped"}

# dino2 = {name: "Stegosaurus", diet: "herbivore", hip_type: "lizard-hipped"}

# dino3 = {"name" => "Ornithomimus", "diet" => "omnivore", "hip_type" => "bird-hipped"}

# puts dino1
# puts dino2
# puts dino3