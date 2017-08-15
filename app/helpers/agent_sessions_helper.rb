module AgentSessionsHelper
	def log_in(agent)
		session[:agent_id] = agent.id
	end

	def current_user
		@current_agent ||= Agent.find_by(id: session[:agent_id])
	end

	def logged_in?
		!@current_agent.nil?
	end

	def log_out
		session.delete(:agent_id)
		@current_agent = nil

	end
end
