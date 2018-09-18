5.times do
  Member.create({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    member_description: Faker::HarryPotter.quote
    })
end
