# frozen_string_literal: true

class DashboardController < ApplicationController
  def index
    render json: serialize(Student.includes(:courses).all).serialized_json, status: :ok
  end

  private

  def serialize(students)
    StudentSerializer.new(students, include: [:courses])
  end
end
