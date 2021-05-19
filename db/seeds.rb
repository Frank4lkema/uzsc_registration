TrainingParticipant.delete_all
UserRole.delete_all
TrainingTeam.delete_all
Training.delete_all
User.delete_all

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




user_array = [
	{name:"mats",email:"mats@gmail.com",password:"mats123456",team: TEAMS[6]},
	{name:"koen",email:"koen@gmail.com",password:"koen123456",team: TEAMS[6]},
	{name:"thijs",email:"thijs@gmail.com",password:"thijs123456",team: TEAMS[6]},
	{name:"joost",email:"joost@gmail.com",password:"joost123456",team: TEAMS[6]},
	{name:"lucas",email:"lucas@gmail.com",password:"lucas123456",team: TEAMS[6]},
	{name:"erik",email:"erik@gmail.com",password:"erik123456",team: TEAMS[6]},
	{name:"rik",email:"rik@gmail.com",password:"rik123456",team: TEAMS[6]},
	{name:"hans",email:"hans@gmail.com",password:"hans123456",team: TEAMS[6]},
	{name:"martijn",email:"martijn@gmail.com",password:"martijn123456",team: TEAMS[6]},
	{name:"arnout",email:"arnout@gmail.com",password:"arnout123456",team: TEAMS[6]},
	{name:"hagen",email:"hagen@gmail.com",password:"hagen123456",team: TEAMS[6]},
	{name:"arnoud",email:"arnoud@gmail.com",password:"arnoud123456",team: TEAMS[6]},
	{name:"martin",email:"martin@gmail.com",password:"martin123456",team: TEAMS[6]},
]


user_array.each do |user|
	new_user = User.create(user)
	UserRole.create(
		role_type: USER_ROLES[1],
		user_id: new_user.id
	)
end


start_date = "20-05-2021".to_date
(1..11).to_a.each do |x|
	training = Training.create(
					date: start_date,
					start_hour: "21:00",
					end_hour: "22:00",
					max_participants: 10,
				)

	TrainingTeam.create(
									team: TEAMS[6],
									training_id: training.id
					)

	start_date = start_date + 1.week

end