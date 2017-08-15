module SessionsHelper

	def log_in(actor)
		puts "&&&&&&&&&"
		puts actor
		session[:actor_id] = actor.id
	end

	def current_user
		@current_actor ||= Actor.find_by(id: session[:actor_id])
	end

	def logged_in?
		puts "????????"
		puts session[:actor_id]
		puts @current_actor
		puts "????????"
		current_user
		!@current_actor.nil?
	end

	def log_out
		session.delete(:actor_id)
		@current_actor = nil

	end

end
