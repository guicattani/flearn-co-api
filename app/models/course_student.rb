# frozen_string_literal: true

class CourseStudent < ActiveRecord::Base
  belongs_to :course
  belongs_to :student

  validates_presence_of :course_id, :student_id
  validate :student_count_within_limit, on: :create
  validate :students_from_different_countries, on: :create

  private

  def student_count_within_limit
    errors.add(:student, "Too many students in course") if course_students_hit_limit?
  end

  def course_students_hit_limit?
    course.students.size >= ENV['MAX_STUDENTS_PER_COURSE'].to_i
  end

  def students_from_different_countries
    errors.add(:student, "Student nationality already present") if new_student_valid_country?
  end

  def new_student_valid_country?
    course.students.pluck(:country).include?(student.country)
  end
end
