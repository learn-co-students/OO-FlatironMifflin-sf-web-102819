class Employee
  attr_reader :salary, :manager_name, :name
  
  @@all = []
  
  # Employee#name
  # returns a String that is the employee's name
  # Employee#salary
  # returns a Fixnum that is the employee's salary
  # Employee#manager_name
  # returns a String that is the name of their manager
  def initialize(name, salary, manager_name)
    @name = name
    @salary = salary
    @manager_name = manager_name
    @@all << self
  end
  
  # Employee.all
  # returns an Array of all the employees
  def self.all
    @@all
  end
  
  # Employee.paid_over
  # takes a Fixnum argument and returns an Array of all the employees whose salaries are over that amount
  def self.paid_over(num)
    Employee.all.select { |employee| employee.salary > num }
  end
  
  # Employee.find_by_department
  # takes a String argument that is the name of a department and returns the first employee whose manager is working in that department
  def self.find_by_department(depart_name)
    #go through all the managers
    #see which manager works in this department
    #then find the first emp who works under this manager
    man_arr = Manager.all.select { |man| man.department == depart_name }
    # man_name = man_arr[0].name
    # man_arr.find { |emp| emp.manager_name == man_name }
    man_arr[0].employees[0] #=> employee instance
  end
  
  #THIS ONE WAS HARD ------------- DIDN'T GET TO WORK -------------
  # Employee#tax_bracket
  # returns an Array of all the employees whose salaries are within $1000 (± 1000) of the employee who invoked the method
  def tax_bracket
    # Employee.all.select do |emp|
    #   if emp.salary > self.salary - 1000 && emp.salary < self.salary + 1000
    #     emp.name
    #   end
    # end
    arr = []
    Employee.all.each do |emp|
      if (emp.salary > self.salary - 1000) && (emp.salary < self.salary + 1000)
        arr << emp
      else
        "nope"
      end
    end
    arr
  end
  
end
