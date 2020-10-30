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


	def day_date_month(date)
		date_array =[]
		date_array << All_WEEK_DAYS[((date.cwday) -1)]
		date_array << date.day.to_s
		date_array << All_MONTHS[((date.month) -1)]
		date_array.join(" ")
	end
end
