# frozen_string_literal: true

class ParentStudent < ActiveRecord::Base
  belongs_to :parent, foreign_key: "parent_id"
  belongs_to :student, foreign_key: "student_id"

  validates_presence_of :student_id, :parent_id
end
