class AddCascadeDeleteToTasks < ActiveRecord::Migration[7.2]
  def change
    remove_foreign_key :tasks, :projects
    add_foreign_key :tasks, :projects, on_delete: :cascade
  end
end
