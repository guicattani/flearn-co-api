# frozen_string_literal: true

FactoryBot.define do
  factory :course do
    sequence :name do |n|
      "course#{n}"
    end
  end
end
