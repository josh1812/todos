class TaskView
  def self.display_completed(task)
    puts "Completed #{task.description} from your amazing todo list, good job :D"
  end

  def self.display_successfully_added(task)
    puts "Added #{task.description} to your long list of TODOS!"
  end

  def self.deleted_successfully(task_id)
    puts "Deleted #{task_id.description}"
  end
end