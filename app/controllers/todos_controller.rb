require 'byebug'

class Todo

  def self.add(task)
    new_task = Task.create(description: task)
    TaskView.display_successfully_added(new_task)
  end


#___________________________________

 # def add(task) #instance method
 #    new_task = Task.create(description: task)
 #    puts "Added #{new_task.description} to your long list of TODOS!"
 #    end


 # task = ToDo.new

 #  if input[0] == "add"
 #    Todo.add(input[1..-1].join(" "))

#_____________________________________

  def self.delete(task_id)
    task = Task.find_by(id: task_id.to_i).destroy
    TaskView.deleted_successfully(task)
  end



  def self.completion(task_id)
    task = Task.find_by(id: task_id.to_i)
    task.completion = true
    task.save
    TaskView.display_completed(task)
  end


  def self.list
    task=Task.all
    task.each do |x|
      puts "#{x.id} #{x.description} #{x.completion}"
    end
  end
end


# a=Todo.new
# a.add(dihdsaivsoidh)
# class Viewing

#   def self.