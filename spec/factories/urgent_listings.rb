FactoryBot.define do
  factory :urgent_listing do
    title { "MyString" }
    time { "2021-08-25 22:05:36" }
    date { "2021-08-25" }
    details { "MyText" }
    user { nil }
  end
end
