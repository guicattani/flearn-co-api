# frozen_string_literal: true

class CourseTeacher < ActiveRecord::Base
  belongs_to :course
  belongs_to :teacher

  validates_presence_of :course_id, :user_id
end
