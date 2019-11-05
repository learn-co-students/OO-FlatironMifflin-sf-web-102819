class Manager
  attr_reader :department, :name, :age, :employees
  
  @@all = []
  
  # Manager#name
  # -returns a String that is the manager's name
  # Manager#department
  # -returns a String that is the department that the manager oversees
  # Manager#age
  # -returns a Fixnum that is the age of the manager
  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age 
    @employees = []
    @@all << self
  end
  
  # Manager#employees
  # -returns an Array of all the employees that the manager oversees
  def employees
    @employees
  end
  
  # Manager.all
  # -returns an Array of all the managers
  def self.all
    @@all
  end
  
  # Manager#hire_employee
  # takes a String argument and a Fixnum argument of an employee's name and the employee's salary, respectively, and adds that employee to the list of employees that the manager oversees
  def hire_employee(employee_name, employee_salary)
    @employees << Employee.new(employee_name, employee_salary, self)
  end
  
  # Manager.all_departments
  # -returns an Array of all the department names that every manager oversees
  def self.all_departments
    Manager.all.map { |man| man.department }
  end

  # Manager.average_age
  # -returns a Float that is the average age of all the managers
  def self.average_age
    total = 0.0
    i = 0
    while i < Manager.all.length
      man = Manager.all[i]
      total += man.age.to_i
      i += 1
    end
    total / i+1
  end
end
