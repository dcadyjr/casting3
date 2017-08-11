class Project < ApplicationRecord

	self.table_name = 'projects'

	has_many :roles, class_name: "Role"
	has_many :actors, through: :actors_projects
end
