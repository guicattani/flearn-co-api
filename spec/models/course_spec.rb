# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

RSpec.describe Course, type: :model do
  context "validations" do
    it { should have_many(:course_teachers) }
    it { should have_many(:teachers) }
    it { should have_many(:course_students) }
    it { should have_many(:students) }

    let(:course) { FactoryBot.create(:course) }
    it 'should have max number of students' do
      ENV['MAX_STUDENTS_PER_COURSE'] = "1"

      course.students << FactoryBot.create(:student)
      expect { course.students << FactoryBot.create(:student, country: "USA") }
        .to raise_error ActiveRecord::RecordInvalid
    end

    it 'should have max number of teachers' do
      ENV['MAX_TEACHERS_PER_COURSE'] = "1"

      course.teachers << FactoryBot.create(:teacher)
      expect { course.teachers << FactoryBot.create(:teacher) }
        .to raise_error ActiveRecord::RecordInvalid
    end

    it 'should have teachers from same country' do
      course.teachers << FactoryBot.create(:teacher)
      expect { course.teachers << FactoryBot.create(:teacher, country: "USA") }
        .to raise_error ActiveRecord::RecordInvalid
    end

    it 'should have students from different countries' do
      course.students << FactoryBot.create(:student)
      expect { course.students << FactoryBot.create(:student) }
        .to raise_error ActiveRecord::RecordInvalid
    end
  end
end
