require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

@store_1 = Store.find_by(id: 1)
@store_1.update(name: 'Gucci')
puts @store_1.name


