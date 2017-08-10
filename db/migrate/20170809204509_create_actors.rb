class CreateActors < ActiveRecord::Migration[5.1]
  def change
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :image_url
      t.string :tel_no
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :agent
      t.boolean :union
      t.integer :ht_feet
      t.integer :ht_inches
      t.integer :weight
      t.string :eye_color
      t.string :hair_color
      t.string :shoe_size
      t.string :gender
      t.string :ethnicity
      t.string :dob
      t.string :suit_size
      t.string :dress_size
      t.string :shirt_size
      t.integer :waist
      t.integer :inseam

      t.timestamps
    end
  end
end
