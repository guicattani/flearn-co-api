# frozen_string_literal: true

class Course < ApplicationRecord
  has_many :course_teachers
  has_many :teachers, foreign_key: "course_id", through: :course_teachers

  has_many :course_students
  has_many :students, foreign_key: "course_id", through: :course_students

  validates_length_of :students, maximum: ENV['MAX_STUDENTS_PER_COURSE']
  validates_length_of :teachers, maximum: ENV['MAX_TEACHERS_PER_COURSE']
end
