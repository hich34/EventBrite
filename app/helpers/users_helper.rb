module UsersHelper

def user_event_created
	Event.find_by(admin_id: @user)
end

end
