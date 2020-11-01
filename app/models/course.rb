# frozen_string_literal: true

class Course < ApplicationRecord
  has_many :course_teachers
  has_many :teachers, foreign_key: "course_id", through: :course_teachers

  has_many :course_students
  has_many :students, foreign_key: "course_id", through: :course_students
end
