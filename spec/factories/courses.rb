FactoryBot.define do
  factory :course do
    title { 'MyString' }
    description { 'MyText' }
    released_on { '2022-12-15' }
    author
  end
end
