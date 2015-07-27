require_relative '../../config/application'

class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |x|
      x.string :description
      x.string :completion
      x.timestamps null: false
    end
  end
end
