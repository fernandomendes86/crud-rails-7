# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'students/index', type: :view do
  before(:each) do
    assign(:students, [
             Student.create!(
               name: 'Name',
               team: nil
             ),
             Student.create!(
               name: 'Name',
               team: nil
             )
           ])
  end

  xit 'renders a list of students' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
