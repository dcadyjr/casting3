class CreateAuditions < ActiveRecord::Migration[5.1]
  def change
    create_table :auditions do |t|
      t.boolean :attended
      t.string :time
      t.references :actor, foreign_key: true
      t.references :role, foreign_key: true

      t.timestamps
    end
  end
end
