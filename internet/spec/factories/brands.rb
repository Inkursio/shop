

FactoryBot.define do
  factory name :brand do
    title       { Faker::Lorem.sentence(word_cout: 10)}
    bytitle     { Faker::Lorem.sentence(word_cout: 10).downcase}
    img         { Faker::Lorem.sentence(word_cout: 10).downcase}
    description { Faker::Lorem.sentence(word_cout: 10)}
  end
end
