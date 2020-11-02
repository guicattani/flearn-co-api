# frozen_string_literal: true

class Parent < User
  before_create :set_parent_role
  has_many :parent_students, foreign_key: "parent_id"
  has_many :students, foreign_key: "parent_id", through: :parent_students

  default_scope { where(role: PARENT) }

  private

  def set_parent_role
    self[:role] = PARENT
  end
end
