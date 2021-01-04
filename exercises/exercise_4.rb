require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store = Store.create(name: 'Surrey', annual_revenue: 224_000, mens_apparel: false, womens_apparel: true)
store = Store.create(name: 'Whistler', annual_revenue: 1_900_000, mens_apparel: true, womens_apparel: false)
store = Store.create(name: 'Yaletown', annual_revenue: 430_000, mens_apparel: true, womens_apparel: true)

# fetch Only Mens Stores
@mens_stores = Store.where(["mens_apparel = ? and womens_apparel = ?", true, false])
@mens_stores.each do |mens_store|
  puts " #{mens_store.name}, Annual Revenue: #{mens_store.annual_revenue}"
end

# fetch Only Womens Stores w. < 1mil revenue
@womens_stores = Store.where(["mens_apparel = ? and womens_apparel = ?", false, true])
@womens_stores.each do |womens_store|
  if womens_store.annual_revenue < 1_000_000
    puts " #{womens_store.name}, Annual Revenue: #{womens_store.annual_revenue}"
  end
end