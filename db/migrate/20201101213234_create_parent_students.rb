# frozen_string_literal: true

class CreateParentStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :parent_students do |t|
      t.bigint "parent_id", index: true, foreign_key: true
      t.bigint "student_id", index: true, foreign_key: true
      t.timestamps
    end
  end
end
