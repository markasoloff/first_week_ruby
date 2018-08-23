require "./store_front.rb"
require "./store_item.rb"
require "./food.rb"
require "./action_mod.rb"




food = StoreFront::Food.new(name: "Jelly", diet: "nothing", hip_type: "No hips here, pal!", weight: 1, shelf_life: "6 months")


puts food.name
puts food.shelf_life
puts food.print_info
puts food.perspire

dino1 = StoreFront::Dino.new(name: "Tyrannosaurus Rex", diet: "carnivore", hip_type: "bird-hipped", weight: 1500)

puts dino1.print_info
puts dino1.name 
puts dino1.weight = 50000
puts dino1.hip_type
puts dino1.perspire
  