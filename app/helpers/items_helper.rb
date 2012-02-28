module ItemsHelper
	
	def date_status(item)
		if (Time.now.in_time_zone - item.updated_at.to_datetime)  <= 24.hours 
			time_ago_in_words(item.updated_at)
		elsif(Time.now.in_time_zone - item.updated_at.to_datetime) <= 1.year
			item.updated_at.strftime("%d %b")
		else
			item.update_at.strftime("%d %b %Y")
		end
	end
    
	def button_name(item)
		if item.done?
			button = "Undo"
		else
			button = "Done"
		end
	
	end
end
