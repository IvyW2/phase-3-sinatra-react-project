#puts "🌱 Seeding spices..."

# Seed your database here

# Add a console message so we can see output when the seed file runs
puts "Seeding tables..."

user1 = User.create(
    name: 'Janedoe',
    email: 'janedoe@gmail',
    password: '123',
    username: 'Jane'
)
user2 = User.create(
    name: 'Johndoe',
    email: 'johndoe@gmail',
    password: '123',
    username: 'John'
)
user3 = User.create(
    name: 'MaryJane',
    email: 'maryjane@gmail',
    password: '123',
    username: 'MJ'
)
user4 = User.create(
    name: 'MichaelJohn',
    email: 'michaeljohn@gmail',
    password: '123',
    username: 'MLJ'
)
user5 = User.create(
    name: 'JamesBond',
    email: 'jamesbond@gmail',
    password: '123',
    username: 'JB'
)
user6 = User.create(
    name: 'LebronJames',
    email: 'lebronjames@gmail',
    password: '123',
    username: 'LJ'
)


# 6.times do
#     user = User.create(
#         name: Faker::Name.name,
#         email: Faker::Internet.email,
#         password: Faker::Internet.password,
#         username: Faker::Internet.username
#     )
# end

5.times do |i|
    project = Project.create(
        title: Faker::Company.bs,
        project_owner_id: rand(1..6),
        description: Faker::Quote.famous_last_words,
        status: rand(0..3),
        due: Faker::Date.forward(days: 100)
    )
    randomized_users = (1..6).to_a.shuffle
    rand(1..5).times do |j|
        if project.project_owner_id!=randomized_users[j]
        Job.create(
        user_id: randomized_users[j],
        project_id: i+1
        )
        end
    end
end

puts "Done seeding!"

