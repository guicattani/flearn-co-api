# frozen_string_literal: true

class CourseStudent < ActiveRecord::Base
  belongs_to :course
  belongs_to :student

  validates_presence_of :course_id, :user_id
end
