module AgentSessionsHelper

	def agent_log_in(agent)
		session[:agent_id] = agent.id
	end

	def agent_current_user
		@current_agent ||= Agent.find_by(id: session[:agent_id])
	end

	def agent_logged_in?
		agent_current_user
		!@current_agent.nil?
	end

	def agent_log_out
		session.delete(:agent_id)
		@current_agent = nil

	end
end
