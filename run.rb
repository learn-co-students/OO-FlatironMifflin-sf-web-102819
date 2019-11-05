require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
bob = Manager.new("bob", "tech", "36")
april = Manager.new("april", "finance", "25")
q = Manager.new("q", "warehouse", "20")

joe = Employee.new("joe", 500, "bob")
lis = Employee.new("lis", 550, "bob")
abe = Employee.new("abe", 555, "q")

bob.hire_employee("crystal", 1000)
bob.hire_employee("kool", 1000)


binding.pry
puts "done"
