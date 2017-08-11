json.extract! agent, :id, :first_name, :last_name, :email, :password_digest, :created_at, :updated_at
json.url agent_url(agent, format: :json)
