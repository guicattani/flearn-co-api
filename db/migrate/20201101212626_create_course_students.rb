# frozen_string_literal: true

class CreateCourseStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :course_students do |t|
      t.bigint "course_id", index: true, foreign_key: true
      t.bigint "student_id", index: true, foreign_key: true
    end
  end
end
