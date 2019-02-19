require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

store_4 = Store.new
store_5 = Store.new
store_6 = Store.new

store_4 = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
store_5  = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
store_6 = Store.create(name: "Gastown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores= Store.where(mens_apparel: true)

@mens_stores.find_each do |store|
   puts store.name
   puts store.annual_revenue
end

@womens_stores= Store.where(womens_apparel: true)

@womens_stores.where("annual_revenue < ?",1000000).find_each do |store|
   puts store.name
   puts store.annual_revenue
end