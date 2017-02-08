class ChangeMoodColumns < ActiveRecord::Migration[5.0]
  def change
  	remove_column :moods, :name
  	add_column :moods, :name, :string
  end
end
