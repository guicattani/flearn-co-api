# frozen_string_literal: true

class User < ApplicationRecord
  STUDENT = 0
  PARENT = 1
  TEACHER = 2
  USER_ROLES = [STUDENT, PARENT, TEACHER].freeze

  validates :role, inclusion: { in: USER_ROLES }
  validates_presence_of :name, :email, :country, on: :create, message: "can't be blank"

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
end
