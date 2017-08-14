class CreateActorsProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :actors_projects do |t|
      t.references :actor, foreign_key: true, on_delete: :cascade
      t.references :project, foreign_key: true, on_delete: :cascade

      t.timestamps
    end
  end
end
