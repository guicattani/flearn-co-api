# frozen_string_literal: true

FactoryBot.define do
  factory :student do
    name { "Beltrano" }
    sequence :email do |n|
      "user#{n}@flearn.com"
    end
    password { "123456" }
    country { "Brazil" }
  end
end
