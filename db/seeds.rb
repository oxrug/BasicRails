User.create!(name: "Example User",
             email: "example@railstutorial.org",
             password: "foobarz",
             password_confirmation: "foobarz",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

User.create!(name: "leskity",
             email: "example2@railstutorial.org",
             password: "sterzi.81",
             password_confirmation: "sterzi.81",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end
