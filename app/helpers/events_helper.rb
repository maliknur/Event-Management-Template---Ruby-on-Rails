module EventsHelper
	def date_for_display(date)
    fsdate = (date == nil)? date :  I18n.l( DateTime.parse(date.localtime.to_s), :format => :long)
  	end

  	def user_events(event_id, user_id)
  		event = Event.find(event_id)
  		user_event = UserEvent.where event_id: event
  		if user_event.find_by user_id: user_id
  			return true
  		else
  			return false
  		end


  	end

end
