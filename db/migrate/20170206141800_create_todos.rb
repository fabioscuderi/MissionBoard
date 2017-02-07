class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :description
      t.integer :status
      t.datetime :due_date
      t.string :image

      t.timestamps
    end
  end
end
