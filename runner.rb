require "./employee_1.rb"
require "./manager.rb"
require "./intern.rb"


employee_1 = Employee.new(
                          first_name: "Bill", 
                          last_name: "McNeal", 
                          salary: 70000, 
                          active: true
                          )
employee_2 = Employee.new(
                          first_name: "Harriet", 
                          last_name: "Hayes", 
                          salary: 80000, 
                          active: true
                          )
# employee_2.print_info
# employee_1.print_info

manager = Manager.new(
                      first_name: "Bill",
                      last_name: "Lumbergh",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )


intern = Intern.new(
                    first_name: "Buddy",
                    last_name: "Holly",
                    salary: 1000,
                    active: true
                    )

p manager.print_info
manager.send_report
intern.send_report