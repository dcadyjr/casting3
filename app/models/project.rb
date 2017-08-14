class Project < ApplicationRecord

	self.table_name = 'projects'

	has_many :roles, dependent: :destroy
	has_many :actors, through: :actors_projects, dependent: :destroy
end
