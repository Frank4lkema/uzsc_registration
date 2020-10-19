User.destroy_all
Training.delete_all

spreadsheet = Roo::Excelx.new("importbestand.xlsx")
body = []
(2..spreadsheet.last_row).each do |i|
	body << spreadsheet.row(i)
end


body.each do |row|
	if row[3] == "JEUGD"
		start_hour = Time.at(row[1]).in_time_zone.strftime('%H:%M')
		end_hour = Time.at(row[2]).in_time_zone.strftime('%H:%M')

		Training.create(
			date: row[0],
			start_hour: start_hour,
			end_hour: end_hour,
			max_participants: 100,
			team: ["Jeugd"]

		)
	else
		teams = row[3].scan(/../)
		start_hour = Time.at(row[1]).in_time_zone.strftime('%H:%M')
		end_hour = Time.at(row[2]).in_time_zone.strftime('%H:%M')

		Training.create(
			date: row[0],
			start_hour: start_hour,
			end_hour: end_hour,
			max_participants: 30,
			team: teams

		)

	end
end
