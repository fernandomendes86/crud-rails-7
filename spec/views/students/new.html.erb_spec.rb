# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'students/new', type: :view do
  before(:each) do
    assign(:student, Student.new(
                       name: 'MyString',
                       team: nil
                     ))
  end

  xit 'renders new student form' do
    render

    assert_select 'form[action=?][method=?]', students_path, 'post' do
      assert_select 'input[name=?]', 'student[name]'

      assert_select 'input[name=?]', 'student[team_id]'
    end
  end
end
