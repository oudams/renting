module ApplicationHelper
	def authenticated_user?
		user_signed_in?
	end
end
