FactoryBot.define do
  factory :professor do
    email { 'test_email@domain.com' }
  end

  factory :course do
    title { 'test title' }
  end
end