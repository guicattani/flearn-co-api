# frozen_string_literal: true

class Parent < User
  has_many :parent_students, foreign_key: "parent_id"
  has_many :students, foreign_key: "parent_id", through: :parent_students
end
