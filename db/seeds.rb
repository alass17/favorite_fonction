10.times do |n|
  name = Faker::Name.first_name
  email = "user#{n}@sample.com"
  password = "password"
  User.create!(name: name, email: email, password: password)
end

50.times do
  title = Faker::Book.title
  description = Faker::Quote.famous_last_words
  user_id = User.order("RANDOM()").first.id
  Blog.create!(title: title, description: description, user_id: user_id)
end
