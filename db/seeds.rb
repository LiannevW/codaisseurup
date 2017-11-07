User.destroy_all

lianne = User.create!(
  email: 'lianne.van.w@gmail.com',
  password: '1234567'
)

Event.create!(
  name: "Meetup",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Quisque gravida lectus gravida.",
  location: "somewere",
  price: 7.5,
  capacity: 4,
  includes_food: true,
  includes_drinks: false,
  starts_at: Date.today,
  ends_at: Date.today + 1.day,
  active: true,
  user: lianne
)

Event.create!(
  name: "Meeting",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Quisque gravida lectus gravida.",
  location: "somewere",
  price: 7.5,
  capacity: 4,
  includes_food: true,
  includes_drinks: false,
  starts_at: "2017-12-07 00:00:00",
  ends_at: "2018-01-07 00:00:00",
  active: true,
  user: lianne
)
