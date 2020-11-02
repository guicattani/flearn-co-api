# frozen_string_literal: true

class Student < User
  before_create :set_student_role
  has_many :course_students, foreign_key: "student_id"
  has_many :courses, foreign_key: "student_id", through: :course_students

  has_many :parent_students, foreign_key: "student_id"
  has_many :parents, foreign_key: "student_id", through: :parent_students

  default_scope { where(role: STUDENT) }

  private

  def set_teacher_role
    self[:role] = STUDENT
  end
end
