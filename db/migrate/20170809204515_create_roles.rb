class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.string :char_name
      t.references :project, foreign_key: true, on_delete: :cascade

      t.timestamps
    end
  end
end
