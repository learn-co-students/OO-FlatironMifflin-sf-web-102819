class Manager
    @@all = []
    attr_accessor :name, :department, :age, :employees

    def initialize (name, department, age, employees)
        @name = name
        @department = department
        @age = age
        @employees = []
        @@all << self
    end

    def self.all
        @@all
    end

    def hire_employee(name, salaray)
        @employees << Employee.new(name, salary, self)
    end
    
    def self.all_departments
        @@all.map { |manager|
            manager.department
        }
    end

    def self.average_age
        # all_ages = @@all.map { |manager|
        #     manager.age
        # }
        # total_ages = all_ages.reduce { |sum, n|
        #     sum + n
        # }
        total_ages = Manager.all.reduce(0) { |sum, n|
            sum + n.age
        }
    end
end
