module EventsHelper

def event_helper
	@event = Event.all
end

def new_event
	Event.new
end

def event_current
	Event.find_by(id: params[:id])
end

def admin_event_email
	User.find(event_current.admin_id).email
end

end
