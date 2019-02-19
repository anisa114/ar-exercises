require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"


class Employee < ActiveRecord::Base 
    belongs_to :store
  
    validates :store, :first_name, :last_name, presence: true
    validates :hourly_rate, :inclusion => 40..200
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "Anisa", last_name: "Tahlil", hourly_rate: 40)
@store2.employees.create(first_name: "Mike", last_name: "Smith", hourly_rate: 30)


@store2.employees.each do |employee|
    puts employee.valid?
end

