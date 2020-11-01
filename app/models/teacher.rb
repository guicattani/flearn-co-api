# frozen_string_literal: true

class Teacher < User
  has_many :course_teachers, foreign_key: "teacher_id"
  has_many :courses, foreign_key: "teacher_id", through: :course_teachers
end
