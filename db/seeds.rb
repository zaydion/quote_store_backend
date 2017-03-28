10.times do
  Quote.create(
                title: Faker::Name.name_with_middle,
                body: Faker::Lorem.paragraph,
                price: Faker::Number.decimal(2),
                size: %w(small full).sample
              )

end
