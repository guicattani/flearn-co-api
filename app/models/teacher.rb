# frozen_string_literal: true

class Teacher < User
  before_create :set_teacher_role

  has_many :course_teachers, foreign_key: "teacher_id"
  has_many :courses, foreign_key: "teacher_id", through: :course_teachers

  default_scope { where(role: TEACHER) }

  private

  def set_teacher_role
    self[:role] = TEACHER
  end
end
