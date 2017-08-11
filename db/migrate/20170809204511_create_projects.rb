class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :production_co
      t.string :director

      t.timestamps
    end
  end
end
