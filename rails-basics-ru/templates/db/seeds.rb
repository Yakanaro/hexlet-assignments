5.times do
  Task.create(
    name: Faker::Name.name,
    description: Faker::Lorem.paragraph,
    creator: Faker::Name.name,
    status: Faker::String.random(length: 3),
    performer: Faker::Name.name,
    completed: [true, false].sample
  )
end
