module EventsHelper

def event_helper
	@event = Event.all
end

def new_event
	Event.new
end

end
