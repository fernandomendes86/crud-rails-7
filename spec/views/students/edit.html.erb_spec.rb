# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'students/edit', type: :view do
  let(:student) do
    Student.create!(
      name: 'MyString',
      team: nil
    )
  end

  before(:each) do
    assign(:student, student)
  end

  xit 'renders the edit student form' do
    render

    assert_select 'form[action=?][method=?]', student_path(student), 'post' do
      assert_select 'input[name=?]', 'student[name]'

      assert_select 'input[name=?]', 'student[team_id]'
    end
  end
end
