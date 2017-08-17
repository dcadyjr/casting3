class Project < ApplicationRecord

	self.table_name = 'projects'

	has_many :roles, dependent: :destroy
	
end
