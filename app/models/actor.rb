class Actor < ApplicationRecord
	before_save { self.email = email.downcase }
	validates :first_name, presence: true, length: { maximum: 50 }
	validates :last_name, presence: true, length: { maximum: 50 }	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
					  format: { with: VALID_EMAIL_REGEX },
					  uniqueness: { case_sensitive: false }	
	has_secure_password
	
	self.table_name = 'actors'

	has_many :actors_projects, class_name: "ActorsProject", dependent: :destroy
	has_many :projects, through: :actors_projects, dependent: :destroy

	has_many :auditions, class_name: "Audition", dependent: :destroy

	def full_name
		"#{first_name}  #{last_name}"
	end
end
