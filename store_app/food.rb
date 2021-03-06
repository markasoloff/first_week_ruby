require "./store_item.rb"
require "./action_mod.rb"
require "./store_front.rb"

module StoreFront
  class Food < Dino
    include Action  
    attr_reader :name, :diet, :hip_type, :weight, :shelf_life
    
    def initialize(input)
      super
      @shelf_life = input[:shelf_life]
    end
  end
end