# frozen_string_literal: true

FactoryBot.define do
  factory :teacher do
    name { "Fulano" }
    sequence :email do |n|
      "user#{n}@flearn.com"
    end
    password { "123456" }
    country { "Brazil" }
  end
end
