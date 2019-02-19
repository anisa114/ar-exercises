require_relative '../setup'

puts "Exercise 1"
puts "----------"


class Store <  ActiveRecord::Base 
end

store_1 = Store.new
store_2 = Store.new
store_3 = Store.new

store_1 = Store.create(name: "Burnbay", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
store_2  = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
store_3 = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

puts Store.count