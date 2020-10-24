TrainingParticipant.delete_all
UserRole.delete_all
TrainingTeam.delete_all
Training.delete_all
User.delete_all
spreadsheet = Roo::Excelx.new("importbestand.xlsx")
body = []
(2..spreadsheet.last_row).each do |i|
	body << spreadsheet.row(i)
end


body.each do |row|
	if row[3] == "JEUGD"
		start_hour = Time.at(row[1]).in_time_zone.strftime('%H:%M')
		end_hour = Time.at(row[2]).in_time_zone.strftime('%H:%M')

		training = Training.create(
			date: row[0],
			start_hour: start_hour,
			end_hour: end_hour,
			max_participants: 100,

		)
		TrainingTeam.create(
			team:"Jeugd",
			training_id: training.id
		)

	else
		teams = row[3].scan(/../).map do |team|
			team = team.split("")
			if team[0] == "H"
				team[0] = "Heren"
			else
				team[0] = "Dames"
			end

			team.join(" ")
		end
		
		start_hour = Time.at(row[1]).in_time_zone.strftime('%H:%M')
		end_hour = Time.at(row[2]).in_time_zone.strftime('%H:%M')

		training = Training.create(
			date: row[0],
			start_hour: start_hour,
			end_hour: end_hour,
			max_participants: 10,
		)

		teams.each do |team|
			TrainingTeam.create(
							team:team,
							training_id: training.id
			)
		end

	end
end


user = User.create(
		name:"Frank",
		email:"frank@gmail.com",
		password: "test123456",
		team: TEAMS[6],
)

UserRole.create(
	role_type: USER_ROLES[0],
	user_id: user.id
)

user_2 = User.create(
	name:"Frank2",
	email:"frank2@gmail.com",
	password: "test123456",
	team: TEAMS[6],
	)

UserRole.create(
	role_type: USER_ROLES[1],
	user_id: user_2.id
)