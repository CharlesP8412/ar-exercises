require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

# Employees must always have a first name present
# Employees must always have a last name present
# Employees must always have a store that they belong to (can't have an employee that is not assigned a store)
Employee.validates :first_name, :last_name, :store, presence: true

# Employees have a hourly_rate that is a number (integer) between 40 and 200
Employee.validates :hourly_rate, numericality: {greater_than: 39,  less_than: 201}
# test = @store1.employees.create(first_name: "test", last_name:"Test2", hourly_rate: 40).valid?
# puts test


# Stores must always have a name that is a minimum of 3 characters
Store.validates :name, length: { minimum: 3 }
# Stores have an annual_revenue that is a number (integer) that must be 0 or more
Store.validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
# BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a custom validation method - don't use a Validator class)

# def carry_apparel
#   if mens_apparel.blank? ||  womens_apparel.blank?
#       errors.add(:apperal, "must include at least mens or womens apparel (true)")
#   end
# end


def carry_apparel
  if mens_apparel.blank? 
    if womens_apparel.blank?
      errors.add(:apperal, "must include at least mens or womens apparel (true)")
    end
  end
end

# || !womens_apparel.present?
Store.validate :carry_apparel

# User Inputs Store name
puts 'Input a store name:'
@test_store = gets.chomp

# Make above Store with name only
store = Store.create(name: @test_store, womens_apparel: true)

# Display Error(s)
store.errors.messages.each do |key, msg|
  puts "Error: #{key} > #{msg}"
end
