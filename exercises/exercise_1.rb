require_relative '../setup'

puts "Exercise 1"
puts "----------"


class Store <  ActiveRecord::Base
  
end

burnbay = Store.new
richmond = Store.new
gastown = Store.new

burnbay = Store.create(name: "Burnbay", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
richmond = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
gastown = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

puts Store.count