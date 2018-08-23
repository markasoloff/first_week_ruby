require "./reportable.rb"
require "./employee_1.rb"

class Manager < Employee
  include Reportable
  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end
end
