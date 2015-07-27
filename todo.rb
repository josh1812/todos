require_relative 'config/application'
require_relative 'app/controllers/todos_controller'

puts "Put your application code in #{File.expand_path(__FILE__)}"



def run
  puts "Type one of the following options: \nadd \nlist \ndelete \ncomplete"

  input = ARGV
  p input
  # ruby todo.rb add eat eat eat
  # ["add", "eat", "eat", 'eat"]


  if input[0] == "add"
    Todo.add(input[1..-1].join(" "))
    # output "eat eat eat"
  elsif input[0] == "list"
    Todo.list
  elsif input[0] == "delete"
    Todo.delete(input[1])
    # delete 1
  else input[0] == "complete"
    Todo.completion(input[1])
    # complete 2
  end
end

run