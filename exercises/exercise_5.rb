require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"


@total_revenue= Store.sum("annual_revenue")
@total_store_count = Store.count
@average_annual = @total_revenue / @total_store_count


puts Store.where("annual_revenue >= ?",1000000).count