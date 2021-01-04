require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_revenue = Store.sum('annual_revenue')
@avg_revenue = Store.average('annual_revenue')
@stores_over_1mil = Store.where(['annual_revenue > ?', 1_000_000]).size
puts "Total Revenue: $#{@total_revenue}"
puts "Average Store Revenue: $#{@avg_revenue}"
puts "#{@stores_over_1mil} Stores with Revenue Over $1 Million"
