module SessionsHelper

	def log_in(actor)
		session[:actor_id] = actor.id
	end

	def current_user
		@current_user ||= Actor.find_by(id: session[:actor_id])
	end

	def logged_in?
		!current_user.nil?
	end

	def log_out
		session.delete(:actor_id)
		@current_user = nil

	end

end
