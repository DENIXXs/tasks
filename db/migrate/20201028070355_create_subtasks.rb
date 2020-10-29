class CreateSubtasks < ActiveRecord::Migration[6.0]
  def change
    create_table :subtasks do |t|
    	t.integer :task_id
    	t.string :text
    	t.boolean :isCompleted

      t.timestamps
    end
  end
end
