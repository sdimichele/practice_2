# employee_1 = ["Sabrina", "DiMichele", 80000, true] 
# employee_2 = ["Jordan", "DiMichele", 60000, true]


# puts "#{employee_1[0]} #{employee_1[1]} makes #{employee_1[2]} a year!"

# puts "#{employee_2[0]} #{employee_2[1]} makes #{employee_2[2]} a year!"


# employee_1 = {first_name: "Sabrina", last_name: "DiMichele", salary: 80000, active: true}
# employee_2 = {first_name: "Jordan", last_name: "DiMichele", salary: 60000, active: true}


# puts "#{employee_1[:first_name]} #{employee_1[:last_name]} makes #{employee_1[:salary]} a year!"
# puts "#{employee_2[:first_name]} #{employee_2[:last_name]} makes #{employee_2[:salary]} a year!"

# 1:28 01-02 ruby review
# an object is always created by a class object is data
# methods are behaviors

class Employee # EmployeeOne
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :active
  def initialize(input_options) # argument variables
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

 
  def print_info
    puts "#{first_name} #{last_name} makes #{salary} a year!"
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

class Manager < Employee

  def send_report
    puts "Sending email......"

    puts "Email Sent"
  end
  

end

employee_1 = Employee.new(
                         first_name: "Sabrina",
                         last_name: "DiMichele",
                         salary: 80000,
                         active: true
                         )

employee_2 = Employee.new(
                         first_name: "Jordan",
                         last_name: "DiMichele",
                         salary: 60000,
                         active: true
                         )


manager = Manager.new(
                     first_name: "Serena",
                     last_name: "DiMichele",
                     salary: 95000,
                     active: true
  )


p employee_1.active
employee_1.active = false
p employee_1.active

manager.send_report