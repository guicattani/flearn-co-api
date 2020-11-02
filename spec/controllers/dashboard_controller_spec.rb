# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DashboardController, type: :controller do
  context '#index' do
    let(:student_1) { FactoryBot.create(:student) }
    let(:student_2) { FactoryBot.create(:student) }
    let(:student_3) { FactoryBot.create(:student) }
    let(:course_1) { FactoryBot.create(:course) }
    let(:course_2) { FactoryBot.create(:course) }
    let(:course_3) { FactoryBot.create(:course) }

    before do
      student_1.courses << course_1
      student_1.courses << course_2

      student_2.courses << course_1
      student_2.courses << course_3

      student_3.courses << course_3
    end

    it 'shows all students and courses' do
      get :index

      expect(JSON.parse(response.body)).not_to be_empty
    end
  end
end
