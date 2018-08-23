require "./action_mod.rb"
require "./store_front.rb"
module StoreFront
  class Dino
    include Action
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
end
#subclass of Dino, created for day 3 in-class assignment

