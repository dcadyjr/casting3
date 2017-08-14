class Role < ApplicationRecord
  self.table_name = 'roles'
  
  belongs_to :project
  has_many :auditions,  dependent: :destroy
end
