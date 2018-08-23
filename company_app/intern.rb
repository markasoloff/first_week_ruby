require "./reportable.rb"
require "./employee_1.rb"
class Intern < Employee
  include Reportable
end