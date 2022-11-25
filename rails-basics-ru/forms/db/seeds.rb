10.times do
  Post.create(
    title: Faker::Name.name,
    body: Faker::Lorem.paragraphs,
    summary: '100',
    published: [true, false].sample
  )
end
