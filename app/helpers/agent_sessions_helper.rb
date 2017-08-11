module AgentSessionsHelper
	def log_in(agent)
		session[:agent_id] = agent.id
	end

	def current_user
		@current_user ||= Agent.find_by(id: session[:actor_id])
	end

	def logged_in?
		!current_user.nil?
	end

	def log_out
		session.delete(:agent_id)
		@current_user = nil

	end
end
