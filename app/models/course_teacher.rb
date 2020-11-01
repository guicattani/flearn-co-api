# frozen_string_literal: true

class CourseTeacher < ActiveRecord::Base
  belongs_to :course
  belongs_to :teacher

  validates_presence_of :course_id, :teacher_id
  validate :teacher_count_within_limit, on: :create
  validate :teachers_from_same_country, on: :create

  private

  def teacher_count_within_limit
    errors.add(:teacher, "Too teachers teaching this course") if course_teachers_hit_limit?
  end

  def course_teachers_hit_limit?
    course.teachers.size >= ENV['MAX_TEACHERS_PER_COURSE'].to_i
  end

  def teachers_from_same_country
    errors.add(:teacher, "Teachers need to come from same country") if new_teacher_valid_country?
  end

  def new_teacher_valid_country?
    course.teachers.pluck(:country).uniq.first == teacher.country
  end
end
