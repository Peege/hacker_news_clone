require 'faker'

Post.destroy_all
User.destroy_all
Comment.destroy_all

20.times do
  Post.create(title: Faker::Lorem.sentence,
    url: Faker::Internet.url,
    user_id: 1 + Random.rand(9))
end

10.times do
  User.create(name: Faker::Name.first_name,
    password: Faker::Internet.password,
    email: Faker::Internet.email)
end

10.times do
  Comment.create(text: Faker::Lorem.sentence,
  user_id: 1 + Random.rand(10),
  post_id: 1 + Random.rand(20))
end