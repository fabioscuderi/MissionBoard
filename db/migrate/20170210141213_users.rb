class Users < ActiveRecord::Migration[5.0]
  def change
  	add_reference :roles, :user, index: true, foreign_key: true
  end
end
