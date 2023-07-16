# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'students/show', type: :view do
  before(:each) do
    assign(:student, Student.create!(
                       name: 'Name',
                       team: nil
                     ))
  end

  xit 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
