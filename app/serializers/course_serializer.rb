# frozen_string_literal: true

class CourseSerializer
  include FastJsonapi::ObjectSerializer
  attribute :name
end
