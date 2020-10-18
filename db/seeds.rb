
User.destroy_all

users = [
	{ email:"martin@gmail.com",password:"geheim12345",name:"Martin" },
	{ email:"martijn@gmail.com",password:"geheim12345",name:"Martijn"  },
	{ email:"koen@gmail.com",password:"geheim12345" ,name:"Koen" },
	{ email:"mats@gmail.com",	 password:"geheim12345",name:"Mats"  },
	{ email:"thijs@gmail.com",	password:"geheim12345",name:"Thijs"  },
	{ email:"rik@gmail.com", password:"geheim12345",name:"Rik"  },
	{ email:"dexter@gmail.com", password:"geheim12345",name:"Dexter" },
	{ email:"lucas@gmail.com",	password:"geheim12345",name:"Lucas"  },
	{ email:"hagen@gmail.com",	password:"geheim12345",name:"Hagen"  },
	{ email:"erik@gmail.com",	password:"geheim12345",name:"Erik" },
	{ email:"joost@gmail.com",	password:"geheim12345",name:"Joost" },
	{ email:"hans@gmail.com",	password:"geheim12345",name:"Hans" },
	{ email:"arnoud@gmail.com",	password:"geheim12345",name:"Arnoud" },
	{ email:"frank@gmail.com",password:"geheim12345",name:"Frank" },
]

users.each do |user|
	new_user = User.create!(user)
end

Training.create(
			date:"22-10-2020".to_date,
			start_hour: "19:35",
			end_hour: "20:30",
			max_participants:30
)
