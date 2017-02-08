class ChangeColumnname < ActiveRecord::Migration[5.0]
  def change
  	add_column :moods, :name, :integer
  	remove_column :moods, :mood
  end
end
