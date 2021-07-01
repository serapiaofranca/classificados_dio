FactoryBot.define do
    factory :user do
        name {"hello"}
        sequence(:email){|n| "hello#{n}@classtest.com"}
        password {"password"}
        password_confirmation {"password"}
    end
end