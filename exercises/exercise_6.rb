require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Justin", last_name: "Ly", hourly_rate: 50)

@store2.employees.create(first_name: "lele", last_name: "lala", hourly_rate: 50)
@store2.employees.create(first_name: "lulu", last_name: "papa", hourly_rate: 55)