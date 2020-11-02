# frozen_string_literal: true

FactoryBot.define do
  factory :student do
    sequence :name do |n|
      "Beltrano#{n}"
    end
    sequence :email do |n|
      "user#{n}@flearn.com"
    end
    password { "123456" }
    country { "Brazil" }
  end
end
