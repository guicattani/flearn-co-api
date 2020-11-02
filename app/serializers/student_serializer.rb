# frozen_string_literal: true

class StudentSerializer
  include FastJsonapi::ObjectSerializer
  has_many :courses, serializer: :Course
  attribute :name, :email, :country
end
