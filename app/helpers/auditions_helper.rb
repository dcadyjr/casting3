module AuditionsHelper

	def current_role
		@current_role ||= Role.find_by(id:[:role_char_name])
	end

end
