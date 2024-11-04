class CreateProjects < ActiveRecord::Migration[7.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.integer :status
      t.datetime :due_date

      t.timestamps
    end

    add_reference :tasks, :project, null: true, foreign_key: true
  end
end
