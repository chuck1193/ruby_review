

require "./employee.rb"
require "./reportable.rb"

module Actualize
  class Manager < Employee
    include Reportable

    def initialize(input_options)
      super(input_options)
      @employees = input_options[:employees]
    end


    def give_all_raises
      # input: the list of employee objects for this manager aka @employees
      # effect of outout: increase salary by 5%
      # go through employees 1 by 1
      # give individual employee a raise
      @employees.each do |person|
        person.give_annual_raise
      end
    end

    def fire_all_employees
      # input: the lsit of employees aka @employees
      #what behaviors do I have access to?
      # effect or output: change all employees that this manager monitors to an active status of false
      # access to every employee 1 by 1
      #change active status to false
      @employees.length.times do |index|
        @employees[index].active = false
      end
    end
  end
end


