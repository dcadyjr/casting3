class AddIndexToAgentsEmail < ActiveRecord::Migration[5.1]
  def change
  	add_index :agents, :email, unique: true
  end
end
