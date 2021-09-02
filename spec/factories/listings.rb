FactoryBot.define do
  factory :listing do
    title { 'MyString' }
    date { '2021-08-25' }
    time { '2021-08-25 21:28:18' }
    details { 'MyText' }
    user { nil }
  end
end
