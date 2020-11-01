# frozen_string_literal: true

class User < ApplicationRecord
  validates_presence_of :name, :email, :country, on: :create, message: "can't be blank"

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
end
