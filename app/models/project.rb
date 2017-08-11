class Project < ApplicationRecord

	self.table_name = 'projects'

	has_many :roles, through: :roles
	has_many :actors, through: :actors_projects
end

# class_name: "Role"