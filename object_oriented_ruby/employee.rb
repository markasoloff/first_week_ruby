
class Employee
  def initialize(first_name, last_name, salary, input_active_status)
    @first_name = first_name
    @last_name = last_name
    @salary = salary
    @input_active_status = input_active_status
  end
  def print_info
     puts "#{ first_name } #{ last_name } makes #{ salary } a year."
  end

#This is a reader method
  def first_name 
    @first_name
  end

#This is a writer method
  def salary=(new_value)
    @salary = new_value
  end

  def active=(new_value)
    @input_active_status = new_value
  end


  def last_name
    @last_name
  end

  def salary
    @salary
  end

  def input_active_status
    @input_active_status

  end
  def give_annual_raise
    @salary = @salary * 1.05
  end
end

employee_1 = Employee.new("Bill", "McNeal", 70000, true)
p employee_1.salary
# The writer method can lose its parens here and gain spaces
p employee_1.salary = 100000000




employee_2 = Employee.new("Harriet", "Hayes", 80000, true)
employee_2.print_info
