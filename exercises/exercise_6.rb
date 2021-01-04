require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
Store.has_many :employees
Employee.belongs_to :store

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Joe", last_name: "Frank", hourly_rate: 40)
@store1.employees.create(first_name: "Terry", last_name: "Jack", hourly_rate: 40)
@store1.employees.create(first_name: "Fitz", last_name: "Henry", hourly_rate: 45)
@store1.employees.create(first_name: "Henry", last_name: "Fitz", hourly_rate: 45)
@store1.employees.create(first_name: "Smith", last_name: "Henry", hourly_rate: 45)

@store2.employees.create(first_name: "Joe", last_name: "Rani", hourly_rate: 65)
@store2.employees.create(first_name: "Harry", last_name: "Vir", hourly_rate: 40)
@store2.employees.create(first_name: "Sally", last_name: "ASD", hourly_rate: 45)
@store2.employees.create(first_name: "Terry", last_name: "Ios", hourly_rate: 42)
@store2.employees.create(first_name: "Terry", last_name: "Smith", hourly_rate: 42)
@store2.employees.create(first_name: "John", last_name: "REs", hourly_rate: 40)

