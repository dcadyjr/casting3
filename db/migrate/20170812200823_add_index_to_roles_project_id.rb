class AddIndexToRolesProjectId < ActiveRecord::Migration[5.1]
  def change
  	def change
  	add_index :roles, [:project_id]
  end
  end
end
