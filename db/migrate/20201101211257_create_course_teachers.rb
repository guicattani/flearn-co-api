# frozen_string_literal: true

class CreateCourseTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :course_teachers do |t|
      t.bigint "course_id", index: true, foreign_key: true
      t.bigint "teacher_id", index: true, foreign_key: true
    end
  end
end
