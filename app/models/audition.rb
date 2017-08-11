class Audition < ApplicationRecord
  self.table_name = 'auditions'

  belongs_to :actor
  belongs_to :role
end
