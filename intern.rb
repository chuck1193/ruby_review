require "./employee.rb"
require "./reportable.rb"

module Actualize
  class Intern < Employee #you don't have to use the namespace here, becasue it is already wrapped in the Actualize module
    include Reportable #includes or mixin shouold alway go in the very first line after defining the class
  end
end