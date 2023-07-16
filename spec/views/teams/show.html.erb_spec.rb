# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'teams/show', type: :view do
  before(:each) do
    assign(:team, Team.create!(
                    kind: 'Kind',
                    description: 'MyText'
                  ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Kind/)
    expect(rendered).to match(/MyText/)
  end
end
