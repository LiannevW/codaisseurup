User.destroy_all
Event.destroy_all
Photo.destroy_all
Profile.destroy_all
Category.destroy_all

#Categories
lekker_fout = Category.create!(name: "Lekker fout")
hollands_glorie = Category.create!(name: "Hollands Glorie")
warm_and_cozy = Category.create!(name: "Warm and Cozy")
event_with_a_view = Category.create!(name: "Event with a View")

#Users
lianne = User.create!(
  email: 'lianne.van.w@gmail.com',
  password: '1234567'
)

pieter = User.create!(
  email: 'pieter.van.w@gmail.com',
  password: '1234567'
)

hendrik = User.create!(
  email: 'hendrik.van.w@gmail.com',
  password: '1234567'
)

#Events
event_1 =
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
  user: lianne,
  categories: [lekker_fout, warm_and_cozy]
)

event_2 =
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
  user: hendrik,
  categories: [event_with_a_view, hollands_glorie]
)

#Photos
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dkyngsnj4/image/upload/v1510231551/FEESTBEESTEN-POSTER-e1501443822331-600x400_fwatob.jpg", event: event_1)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dkyngsnj4/image/upload/v1510232385/zaai-02duVec7-thumb_vyx78o.jpg", event: event_2)
