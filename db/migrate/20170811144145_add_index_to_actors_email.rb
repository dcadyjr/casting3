class AddIndexToActorsEmail < ActiveRecord::Migration[5.1]
  def change
  	add_index :actors, :email, unique: true
  end
end
