module ApplicationHelper
	def pretty_date(date)
		if date
			date.strftime('%d-%m-%Y')
		end
	end

	def pretty_time(date_time)
		if date_time
			date_time.strftime('%H:%M')
		end
	end
end
