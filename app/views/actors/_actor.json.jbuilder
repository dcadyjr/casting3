json.extract! actor, :id, :first_name, :last_name, :email, :password_digest, :image_url, :tel_no, :street_address, :city, :state, :zip_code, :agent, :union, :ht_feet, :ht_inches, :weight, :eye_color, :hair_color, :shoe_size, :gender, :ethnicity, :dob, :suit_size, :dress_size, :shirt_size, :waist, :inseam, :created_at, :updated_at
json.url actor_url(actor, format: :json)
