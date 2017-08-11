class ActorsProject < ApplicationRecord
  self.table_name = 'actors_projects'

  belongs_to :actor
  belongs_to :project
end
