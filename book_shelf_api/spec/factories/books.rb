FactoryGril.define do
  factory :book do
    name { Faker::Book.title }
    author { Faker::Book.author }
    image { Faker::Avatar.image }
    isn { Faker::Number.number(8) }
  end
end
