class Employee
    @@all = []
    attr_accessor :name, :salary, :manager_name

    def initialize (name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(num)
        @@all.select{ |n|
            n.salary > num
        }
    end

    def self.find_by_department(department)
        employees = @@all.find{ |n|
            n.manager_name.department == department
        }
    end

    def tax_bracket
        @@all.select{ |n|
            n.salary - 1000 <= self.salary && n.salary + 1000 >= self.salary
        }
    end
end
