require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


manager1 = Manager.new("Allen", "programming", 27, [])
manager2 = Manager.new("Allen", "programming", 30, [])
manager3 = Manager.new("Allen", "programming", 33, [])

employee1 = Employee.new("Allen", 900, manager1)
employee2 = Employee.new("Allen", 2000, manager1)
employee3 = Employee.new("Allen", 45600, manager1)

binding.pry
puts "done"
