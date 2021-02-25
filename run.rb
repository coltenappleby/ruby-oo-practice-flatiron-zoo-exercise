require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

cpk_zoo = Zoo.new("Central Park Zoo", "New York City, NY")
natl_zoo = Zoo.new("Smithsonian National Zoo", "Washington, DC")

marty = Animal.new("Zebra", 880, "Marty")
kya = Animal.new("Zebra",840, "Kya")
skipper = Animal.new("Penguin", 10, "Skipper")
alex = Animal.new("Lion", 420, "Alex")

marty.zoo = cpk_zoo
kya.zoo = cpk_zoo
skipper.zoo = cpk_zoo
alex.zoo = cpk_zoo

binding.pry
puts "done"
