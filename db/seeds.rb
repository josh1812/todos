require_relative '../app/models/task'
require 'faker'

10.times do |y|
  Task.create(description: Faker::Hacker.say_something_smart)
end